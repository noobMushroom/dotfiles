/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("browser.privatebrowsing.autostart", false); // 0110 required if you had it set as true
user_pref("browser.sessionstore.privacy_level", 0); // 1003 optional to restore cookies/formdata
user_pref("privacy.clearOnShutdown.history", false); // 2811
user_pref("privacy.cpd.history", false); // 2820 optional to match when you use Ctrl-Shift-Del
user_pref("privacy.resistFingerprinting", false); // [FF41+]
// user_pref("privacy.window.maxInnerWidth", 1920);
// user_pref("privacy.window.maxInnerHeight", 1080);
user_pref("privacy.resistFingerprinting.letterboxing", false); // [HIDDEN PREF]
user_pref("browser.display.use_system_colors", true); // [DEFAULT: false NON-WINDOWS]
user_pref("privacy.clearOnShutdown.cache", false);     // [DEFAULT: true]
user_pref("privacy.clearOnShutdown_v2.cache", false);  // [FF128+] [DEFAULT: true]
user_pref("privacy.clearOnShutdown.downloads", false); // [DEFAULT: true]
user_pref("privacy.clearOnShutdown_v2.historyFormDataAndDownloads", false); // [FF128+] [DEFAULT: true]
user_pref("webgl.disabled", false);
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.pocket.showHome", false);
user_pref("extensions.pocket.onSaveRecs", false);
