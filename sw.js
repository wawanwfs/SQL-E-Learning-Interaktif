/**
 * Service Worker — SQL E-Learning Interaktif v4 FULL
 * Strategy: Cache-first for core assets, network-first for data,
 *           stale-while-revalidate for everything else.
 */
const CACHE_VERSION = 'sql-elearning-v4.1';
const CORE_CACHE = CACHE_VERSION + '-core';
const DATA_CACHE = CACHE_VERSION + '-data';
const RUNTIME_CACHE = CACHE_VERSION + '-runtime';

const CORE_ASSETS = [
  './',
  './index.html',
  './404.html',
  './assets/css/style.css',
  './assets/js/data.js',
  './assets/js/minisql.js',
  './assets/js/app.js',
  './assets/js/addons.js',
  './assets/js/v4_enhancements.js',
  './assets/img/erd_toko_pintar.svg',
  './assets/img/query_flow.svg',
  './assets/img/icon-192.svg',
  './assets/img/icon-512.svg',
  './assets/manifest.json'
];

const DATA_ASSETS = [
  './data/v4_competency_map.json',
  './data/v4_flashcards.json',
  './data/v4_casebook.json',
  './data/v4_exam_bank.json',
  './data/v4_pretest_posttest.json',
  './data/v4_study_plans.json',
  './data/challenge_bank.json',
  './data/query_templates.json',
  './data/learning_paths.json'
];

// Install: pre-cache core + data assets
self.addEventListener('install', event => {
  event.waitUntil(
    Promise.all([
      caches.open(CORE_CACHE).then(cache => cache.addAll(CORE_ASSETS)),
      caches.open(DATA_CACHE).then(cache => cache.addAll(DATA_ASSETS))
    ]).then(() => self.skipWaiting())
  );
});

// Activate: clean old caches
self.addEventListener('activate', event => {
  const validCaches = [CORE_CACHE, DATA_CACHE, RUNTIME_CACHE];
  event.waitUntil(
    caches.keys()
      .then(keys => Promise.all(
        keys.filter(k => !validCaches.includes(k)).map(k => caches.delete(k))
      ))
      .then(() => self.clients.claim())
  );
});

// Fetch: cache-first for core, stale-while-revalidate for rest
self.addEventListener('fetch', event => {
  if (event.request.method !== 'GET') return;

  const url = new URL(event.request.url);

  // Ignore external requests (like Google Fonts — let browser handle)
  if (url.origin !== location.origin) return;

  // Core assets: cache-first
  if (CORE_ASSETS.some(a => url.pathname.endsWith(a.replace('./', '')))) {
    event.respondWith(
      caches.match(event.request).then(cached => cached || fetchAndCache(event.request, CORE_CACHE))
    );
    return;
  }

  // Data assets: cache-first with background revalidate
  if (url.pathname.includes('/data/')) {
    event.respondWith(
      caches.match(event.request).then(cached => {
        const networkFetch = fetchAndCache(event.request, DATA_CACHE);
        return cached || networkFetch;
      })
    );
    return;
  }

  // Everything else: network-first, fallback to cache
  event.respondWith(
    fetch(event.request)
      .then(response => {
        if (response.ok) {
          const clone = response.clone();
          caches.open(RUNTIME_CACHE).then(cache => cache.put(event.request, clone)).catch(() => {});
        }
        return response;
      })
      .catch(() => caches.match(event.request))
  );
});

function fetchAndCache(request, cacheName) {
  return fetch(request).then(response => {
    if (response.ok) {
      const clone = response.clone();
      caches.open(cacheName).then(cache => cache.put(request, clone)).catch(() => {});
    }
    return response;
  });
}
