'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "4e4a2865efb0528573fd3ff1ad95fb9e",
"index.html": "662d95744e27e5b105f6452b8b503ad1",
"/": "662d95744e27e5b105f6452b8b503ad1",
"main.dart.js": "596be711006628b9daaa9b6e58029517",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "eb670653e95f83f90eb73e268c890e44",
"assets/AssetManifest.json": "161bbe93b1162ae8fab51b89ee14a631",
"assets/NOTICES": "119775084c5efa6c10c2d2a4cff28c5f",
"assets/FontManifest.json": "b26bad095c3a0a8e2ce010dc07ffe617",
"assets/AssetManifest.bin.json": "6611055357f0059fd822b37e52ed2f79",
"assets/packages/golden_toolkit/fonts/Roboto-Regular.ttf": "ac3f799d5bbaf5196fab15ab8de8431c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/map_launcher/assets/icons/citymapper.svg": "58c49ff6df286e325c21a28ebf783ebe",
"assets/packages/map_launcher/assets/icons/sygicTruck.svg": "242728853b652fa765de8fba7ecd250f",
"assets/packages/map_launcher/assets/icons/naver.svg": "ef3ef5881d4a2beb187dfc87e23b6133",
"assets/packages/map_launcher/assets/icons/tencent.svg": "4e1babec6bbab0159bdc204932193a89",
"assets/packages/map_launcher/assets/icons/copilot.svg": "b412a5f02e8cef01cdb684b03834cc03",
"assets/packages/map_launcher/assets/icons/truckmeister.svg": "416d2d7d2be53cd772bc59b910082a5b",
"assets/packages/map_launcher/assets/icons/yandexNavi.svg": "bad6bf6aebd1e0d711f3c7ed9497e9a3",
"assets/packages/map_launcher/assets/icons/yandexMaps.svg": "3dfd1d365352408e86c9c57fef238eed",
"assets/packages/map_launcher/assets/icons/tmap.svg": "50c98b143eb16f802a756294ed04b200",
"assets/packages/map_launcher/assets/icons/petal.svg": "76c9cfa1bfefb298416cfef6a13a70c5",
"assets/packages/map_launcher/assets/icons/doubleGis.svg": "ab8f52395c01fcd87ed3e2ed9660966e",
"assets/packages/map_launcher/assets/icons/here.svg": "aea2492cde15953de7bb2ab1487fd4c7",
"assets/packages/map_launcher/assets/icons/tomtomgofleet.svg": "5b12dcb09ec0a67934e6586da67a0149",
"assets/packages/map_launcher/assets/icons/mapswithme.svg": "87df7956e58cae949e88a0c744ca49e8",
"assets/packages/map_launcher/assets/icons/osmandplus.svg": "31c36b1f20dc45a88c283e928583736f",
"assets/packages/map_launcher/assets/icons/google.svg": "cb318c1fc31719ceda4073d8ca38fc1e",
"assets/packages/map_launcher/assets/icons/googleGo.svg": "cb318c1fc31719ceda4073d8ca38fc1e",
"assets/packages/map_launcher/assets/icons/kakao.svg": "1c7c75914d64033825ffc0ff2bdbbb58",
"assets/packages/map_launcher/assets/icons/osmand.svg": "639b2304776a6794ec682a926dbcbc4c",
"assets/packages/map_launcher/assets/icons/tomtomgo.svg": "493b0844a3218a19b1c80c92c060bba7",
"assets/packages/map_launcher/assets/icons/flitsmeister.svg": "44ba265e6077dd5bf98668dc2b8baec1",
"assets/packages/map_launcher/assets/icons/baidu.svg": "22335d62432f9d5aac833bcccfa5cfe8",
"assets/packages/map_launcher/assets/icons/apple.svg": "6fe49a5ae50a4c603897f6f54dec16a8",
"assets/packages/map_launcher/assets/icons/waze.svg": "311a17de2a40c8fa1dd9022d4e12982c",
"assets/packages/map_launcher/assets/icons/amap.svg": "00409535b144c70322cd4600de82657c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "9cb3eb539593fe8e378931858a455965",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/svg/add_day_trip.svg.vec": "cf350f6cf2e1ae94fa34fa38ec9de67e",
"assets/assets/svg/add_trip_stop.svg.vec": "ff52f8c4249e4100005ff861cacc9b69",
"assets/assets/svg/arrow.svg.vec": "b861015599192e2a3257b53b40c14112",
"assets/assets/svg/trip.svg.vec": "8277840d57e5f39753b638c466c4b2cc",
"assets/assets/svg/account.svg.vec": "34b0133557b8af61643019cd4e1faf89",
"assets/assets/svg/destination.svg.vec": "a65e714a09dea90a5475f61b7fa56440",
"assets/assets/svg/login.svg.vec": "feddec67666004170b594692af92d5ef",
"assets/assets/svg/add_new_day_trip.svg.vec": "b98d8f6a0476fb2b57c09625e3f4b511",
"assets/assets/appainter_theme.json": "4e449ce5f4ed33933d0483cc1f318440",
"assets/assets/translations/en.json": "7b2c120c7b465f16c6b9b546c3f0cc47",
"assets/assets/translations/it.json": "42568805cf6dd5b493696684233d8d03",
"assets/assets/google_fonts/Jost-BoldItalic.ttf": "a05fde51d69599a2f5dd903ec77e4983",
"assets/assets/google_fonts/Jost-Bold.ttf": "693d37486a0eab3d822b5f6b185f11e0",
"assets/assets/google_fonts/Jost-ThinItalic.ttf": "4c74e21d5081a9e36d8ec5275fef4f6d",
"assets/assets/google_fonts/Jost-ExtraLight.ttf": "8b27840b4ce6760a4b90c4737edbe780",
"assets/assets/google_fonts/Jost-BlackItalic.ttf": "aac27b5ec432d820bca6451eb0d50041",
"assets/assets/google_fonts/Jost-ExtraBoldItalic.ttf": "2bb88443f7c5a97b9dd17bc7f6ef2393",
"assets/assets/google_fonts/Jost-Thin.ttf": "104f4e7e9ac769b824bf8f7dd95f57d3",
"assets/assets/google_fonts/Jost-LightItalic.ttf": "40fff4f48c80f143ff6358533da0ec3d",
"assets/assets/google_fonts/Jost-Black.ttf": "450a4ba59e725734dc6946876d5cdba4",
"assets/assets/google_fonts/Jost-ExtraLightItalic.ttf": "93c98faedefb1ab7936df0eb07cabeaa",
"assets/assets/google_fonts/Jost-Medium.ttf": "2c2945b9da98d9b48d6104893d9558c0",
"assets/assets/google_fonts/Jost-Regular.ttf": "3dba44482cb4f0bfa595833a76643d93",
"assets/assets/google_fonts/Jost-ExtraBold.ttf": "8ce4d9fe3d31d6e0acdaaf57ddc11c67",
"assets/assets/google_fonts/Jost-VariableFont_wght.ttf": "8d9b50a27a9b160de30335566694903a",
"assets/assets/google_fonts/KaushanScript-Regular.ttf": "c76c991a669e5ef94081d9ac348673d5",
"assets/assets/google_fonts/Jost-Light.ttf": "e2e7112c0417169d33d9cbd6af02cd6d",
"assets/assets/google_fonts/Jost-Italic.ttf": "f47e095dec0ac07808c0238cf30e845c",
"assets/assets/google_fonts/Jost-Italic-VariableFont_wght.ttf": "9d8a1653a28f11902b097ed1fd8d45ae",
"assets/assets/google_fonts/Jost-SemiBoldItalic.ttf": "07a8b2b6f59d6da2e7fe932a1ae7407c",
"assets/assets/google_fonts/Jost-SemiBold.ttf": "bcac976eb8c9ec9a512ec8a53fac8be9",
"assets/assets/google_fonts/Jost-MediumItalic.ttf": "0d7deef312dcbcb163409d7fec8c419a",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
