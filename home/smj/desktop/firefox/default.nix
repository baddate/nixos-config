{ config, pkgs, ... }:
  # https://discourse.nixos.org/t/declare-firefox-extensions-and-settings/36265
  let
    lock-false = {
      Value = false;
      Status = "locked";
    };
    lock-true = {
      Value = true;
      Status = "locked";
    };
  in
{
  programs = {
    firefox = {
      enable = true;

      /* ---- POLICIES ---- */
      # Check about:policies#documentation for options.
      policies = {
        DisableTelemetry = true;
        DisableFirefoxStudies = true;
        EnableTrackingProtection = {
          Value= true;
          Locked = true;
          Cryptomining = true;
          Fingerprinting = true;
        };
        DisablePocket = true;
        DisableFirefoxAccounts = true;
        DisableAccounts = true;
        DisableFirefoxScreenshots = true;
        OverrideFirstRunPage = "";
        OverridePostUpdatePage = "";
        DontCheckDefaultBrowser = true;
        DisplayBookmarksToolbar = "never"; # alternatives: "always" or "newtab"
        DisplayMenuBar = "never"; # alternatives: "default-off", "never" or "default-on"
        SearchBar = "unified"; # alternative: "separate"
        SearchEngines = {
          Default = "DUCKDUCKGO";
          Remove = [
            "ebay"
            "Amazon.ca"
          ];
        };
        FirefoxHome = {
          Search = true;
          TopSites = false;
          SponsoredTopSites = false;
          Highlights = false;
          Pocket = false;
          SponsoredPocket = false;
          Snippets = true;
        };

        /* ---- extensions ---- */
        # check about:support for extension/add-on ID strings.
        # Valid strings for installation_mode are "allowed", "blocked",
        # "force_installed" and "normal_installed".
        ExtensionSettings = {
          "*".installation_mode = "blocked"; # blocks all addons except the ones specified below
          # uBlock Origin:
          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
          };
          # Privacy Badger:
          "jid1-MnnxcxisBPnSXQ@jetpack" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/privacy-badger17/latest.xpi";
            installation_mode = "force_installed";
          };
          # I still don't care about cookies:
          "idcac-pub@guus.ninja" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/istilldontcareaboutcookies/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Clearurls:
          "{74145f27-f039-47ce-a470-a662b129930a}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/clearurls/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Bitwarden:
          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Immersive Translate:
          "{5efceaa7-f3a2-4e59-a54b-85319448e305}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/immersive-translate/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Violentmonkey:
          "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/violentmonkey/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Slash:
          "{fc9bcce4-c12e-4c13-9ae7-a2808580d9f4}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/your-slash/latest.xpi";
            installation_mode = "normal_installed";
          };
          # User-Agent Switcher and Manager:
          "{a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/user-agent-string-switcher/latest.xpi";
            installation_mode = "normal_installed";
          };
          # RSSHub Radar:
          "i@diygod.me" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/rsshub-radar/latest.xpi";
            installation_mode = "normal_installed";
          };
          # linkding:
          "{61a05c39-ad45-4086-946f-32adb0a40a9d}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/linkding/latest.xpi";
            installation_mode = "normal_installed";
          };
          # WebRTC Protect - Protect IP Leak:
          "{4bfcf5ab-fb35-4da0-bce3-d8ad07adb08f}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/webrtc-protect/latest.xpi";
            installation_mode = "normal_installed";
          };
          # xBrowserSync:
          "{019b606a-6f61-4d01-af2a-cea528f606da}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/xbs/latest.xpi";
            installation_mode = "normal_installed";
          };
          # Cookie AutoDelete
          "CookieAutoDelete@kennydo.com" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/cookie-autodelete/latest.xpi";
            installation_mode = "normal_installed";
          };
          # DuckDuckGo Privacy Essentials
          "jid1-ZAdIEUB7XOzOJw@jetpack" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/duckduckgo-for-firefox/latest.xpi";
            installation_mode = "normal_installed";
          };
        };

        /* ---- PREFERENCES ---- */
        # Check about:config for options.
        Preferences = {
          "browser.contentblocking.category" = { Value = "strict"; Status = "locked"; };
          # "extensions.pocket.enabled" = lock-false;
          "extensions.screenshots.disabled" = lock-true;
          "browser.topsites.contile.enabled" = lock-false;
          "browser.formfill.enable" = lock-false;
          "browser.search.suggest.enabled" = lock-false;
          "browser.search.suggest.enabled.private" = lock-false;
          "browser.urlbar.suggest.searches" = lock-false;
          "browser.urlbar.showSearchSuggestionsFirst" = lock-false;
          "browser.newtabpage.activity-stream.feeds.section.topstories" = lock-false;
          "browser.newtabpage.activity-stream.feeds.snippets" = lock-false;
          # "browser.newtabpage.activity-stream.section.highlights.includePocket" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeDownloads" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeVisited" = lock-false;
          "browser.newtabpage.activity-stream.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.system.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = lock-false;

          # myself custome
          # Show "Not Secure" for insecure sites
          "security.insecure_connection_text.enabled" = lock-true;
          "security.insecure_connection_text.pbmode.enabled" = lock-true;

          # Enable HTTPS-only mode
          "dom.security.https_only_mode" = lock-true;
          "dom.security.https_only_mode_ever_enabled" = lock-true;

          # https://shen.hong.io/nixos-for-philosophy-installing-firefox-latex-vscodium/
          # Privacy settings
          "privacy.donottrackheader.enabled" = true;
          "privacy.trackingprotection.enabled" = true;
          "privacy.trackingprotection.socialtracking.enabled" = true;
          "privacy.partition.network_state.ocsp_cache" = true;

          # Disable all sorts of telemetry
          "browser.newtabpage.activity-stream.feeds.telemetry" = false;
          "browser.newtabpage.activity-stream.telemetry" = false;
          "browser.ping-centre.telemetry" = false;
          "toolkit.telemetry.archive.enabled" = false;
          "toolkit.telemetry.bhrPing.enabled" = false;
          "toolkit.telemetry.enabled" = false;
          "toolkit.telemetry.firstShutdownPing.enabled" = false;
          "toolkit.telemetry.hybridContent.enabled" = false;
          "toolkit.telemetry.newProfilePing.enabled" = false;
          "toolkit.telemetry.reportingpolicy.firstRun" = false;
          "toolkit.telemetry.shutdownPingSender.enabled" = false;
          "toolkit.telemetry.unified" = false;
          "toolkit.telemetry.updatePing.enabled" = false;

          # As well as Firefox 'experiments'
          "experiments.activeExperiment" = false;
          "experiments.enabled" = false;
          "experiments.supported" = false;
          "network.allow-experiments" = false;

          # Disable Pocket Integration
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
          "extensions.pocket.enabled" = false;
          "extensions.pocket.api" = "";
          "extensions.pocket.oAuthConsumerKey" = "";
          "extensions.pocket.showHome" = false;
          "extensions.pocket.site" = "";
        };
      };
    };
  };
}
