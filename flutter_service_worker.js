'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4369c2c64e9f2da514a1a4e882b333b8",
"assets/assets/images/404-not-found.png": "15bfc66805ca14d016658c9579d3f3da",
"assets/assets/images/arrow.svg": "34998c9511fed5ed5acc6a0e2afa68d1",
"assets/assets/images/day/113.png": "c9888049f3815a19aaa0db5b7c0f34cb",
"assets/assets/images/day/116.png": "de2817582a3610cb2d98bc2de9565641",
"assets/assets/images/day/119.png": "b2d6bd8087f606a344af1d118de15e45",
"assets/assets/images/day/143.png": "65629869eb47360145653b870252856e",
"assets/assets/images/day/176.png": "db2f05633ed2a2ffed8f37f641c89626",
"assets/assets/images/day/179.png": "d95b7bcd23655b5e997ce1f6f537a54e",
"assets/assets/images/day/182.png": "c439e8538791e2a3d56e7060d41533f3",
"assets/assets/images/day/200.png": "7703605ba7b1abad6522e6cfd312626b",
"assets/assets/images/day/248.png": "de418a658c840034510146f1e6faf3f8",
"assets/assets/images/day/260.png": "8d098df5206e0e3a80615d6fc218db82",
"assets/assets/images/day/263.png": "d361598680435cbc64ab97264d3ffc1d",
"assets/assets/images/day/281.png": "32888cd24d8a38de793ebd23bbe3112f",
"assets/assets/images/day/317.png": "6bcfc86056b6487a8bccd855dc631adf",
"assets/assets/images/day/338.png": "440c4094a1114af7f9c94eeeb90a685c",
"assets/assets/images/day/350.png": "0c3645eca9702650d8312018c05364c6",
"assets/assets/images/day/389.png": "7754b759a1c95ed611ae9678a0f32019",
"assets/assets/images/day/392.png": "d114646227432e1d745b117dfd1936fe",
"assets/assets/images/day/395.png": "35a948cc4e1f909f55397b26383dbf8e",
"assets/assets/images/info.svg": "d5a395b7e41b889acf9bef1ad9f9f54f",
"assets/assets/images/night/113.png": "7ba0189ddb26ee6a3f17e78bfda8dc35",
"assets/assets/images/night/116.png": "777e53306f46460f47a78edbf5f973f1",
"assets/assets/images/night/119.png": "b2d6bd8087f606a344af1d118de15e45",
"assets/assets/images/night/143.png": "65629869eb47360145653b870252856e",
"assets/assets/images/night/176.png": "b679c74c11afcd4dfb26610aba2c2833",
"assets/assets/images/night/179.png": "464c8147a32d34e64e5eebd0ac90d9b4",
"assets/assets/images/night/182.png": "5440d8629d2ef2fb82fe8a5dcdf5311c",
"assets/assets/images/night/200.png": "a7bec16289152f2c96efd4ab06e7dcf7",
"assets/assets/images/night/248.png": "de418a658c840034510146f1e6faf3f8",
"assets/assets/images/night/260.png": "8d098df5206e0e3a80615d6fc218db82",
"assets/assets/images/night/263.png": "d361598680435cbc64ab97264d3ffc1d",
"assets/assets/images/night/281.png": "4389d1a51e7e664ec8e5a452ede4f7f2",
"assets/assets/images/night/317.png": "6bcfc86056b6487a8bccd855dc631adf",
"assets/assets/images/night/338.png": "fbfab0c08fae857652354a29d1c76816",
"assets/assets/images/night/350.png": "7ec8508dc88b663efa84423704dcd410",
"assets/assets/images/night/389.png": "7754b759a1c95ed611ae9678a0f32019",
"assets/assets/images/night/392.png": "eedcc96e657c16a560238829be52d5ed",
"assets/assets/images/night/395.png": "1108cecef062252054dbfaa47b1d8b99",
"assets/assets/images/rain-drop.svg": "7e95c468c8274103ad965c0a985792de",
"assets/assets/images/search.svg": "f954b1b3c0773be566b6b5bb097a86c7",
"assets/assets/images/wind.svg": "f825e5a0b127d3823470f9f199277bef",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "019b44e39be7ddb38c5cc93add0b0fc5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "d073695f17547f733f5dd82c89b4d4d1",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "4e3d2b71c078078a42912f9194558c0a",
"/": "4e3d2b71c078078a42912f9194558c0a",
"main.dart.js": "df9dd2566388893453809abc923905b9",
"manifest.json": "4c9b57ea2796fce9435982d9282ceb77",
"version.json": "8a43535f7f10cc5d3f1ae59c8bc75bc7"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
