{pkgs, inputs, user, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;
    settings = {
      defaultbar = {
        position = "top";
        monitors = [ ];
        density = "default";
        showOutline = false;
        showCapsule = true;
        floating = true;
        marginVertical = 5;
        marginHorizontal = 10;
        outerCorners = true;
        exclusive = true;
        hideOnOverview = false;
        widgets = {
          left = [
            {
              colorizeSystemIcon = "primary";
              customIconPath = "";
              enableColorization = true;
              icon = "noctalia";
              id = "ControlCenter";
              useDistroLogo = true;
            }
            {
              characterCount = 2;
              colorizeIcons = false;
              enableScrollWheel = true;
              followFocusedScreen = false;
              hideUnoccupied = false;
              iconScale = 0.6799999999999999;
              id = "Workspace";
              labelMode = "index";
              showApplications = false;
              showLabelsOnlyWhenOccupied = true;
            }
            {
              compactMode = false;
              compactShowAlbumArt = true;
              compactShowVisualizer = false;
              hideMode = "hidden";
              hideWhenIdle = false;
              id = "MediaMini";
              maxWidth = 250;
              panelShowAlbumArt = true;
              panelShowVisualizer = true;
              scrollingMode = "hover";
              showAlbumArt = true;
              showArtistFirst = true;
              showProgressRing = true;
              showVisualizer = false;
              useFixedWidth = false;
              visualizerType = "linear";
            }
          ];
          center = [
            {
              colorizeIcons = false;
              hideMode = "hidden";
              id = "ActiveWindow";
              maxWidth = 300;
              scrollingMode = "hover";
              showIcon = false;
              useFixedWidth = false;
            }
          ];
          right = [
            {
              displayMode = "forceOpen";
              id = "KeyboardLayout";
              showIcon = true;
            }
            {
              alwaysShowPercentage = false;
              displayMode = "alwaysShow";
              hideIfIdle = false;
              hideIfNotDetected = true;
              id = "Battery";
              showNoctaliaPerformance = true;
              showPowerProfiles = true;
              warningThreshold = 30;
            }
            {
              customFont = "";
              formatHorizontal = "HH:mm   ddd MMM d";
              formatVertical = "HH mm";
              id = "Clock";
              tooltipFormat = "HH:mm ddd, MMM dd";
              useCustomFont = false;
              usePrimaryColor = true;
            }
            {
              id = "Network";
            }
            {
              id = "Bluetooth";
            }
            {
              blacklist = [ ];
              colorizeIcons = false;
              drawerEnabled = false;
              hidePassive = false;
              id = "Tray";
              pinned = [ ];
            }
            {
              hideWhenZero = false;
              hideWhenZeroUnread = false;
              id = "NotificationHistory";
              showUnreadBadge = true;
            }
          ];
        };
        screenOverrides = [ ];
      };
      general = {
        avatarImage = "/home/${user}/.face";
        showScreenCorners = false;
        forceBlackScreenCorners = false;
        scaleRatio = 1;
        radiusRatio = 0.6;
        iRadiusRatio = 1;
        boxRadiusRatio = 1;
        screenRadiusRatio = 1;
        animationSpeed = 1;
        animationDisabled = false;
        compactLockScreen = false;
        lockOnSuspend = true;
        showSessionButtonsOnLockScreen = true;
        showHibernateOnLockScreen = false;
        enableShadows = false;
        shadowDirection = "bottom_right";
        shadowOffsetX = 2;
        shadowOffsetY = 3;
        language = "";
        allowPanelsOnScreenWithoutBar = true;
        showChangelogOnStartup = true;
        telemetryEnabled = false;
        enableLockScreenCountdown = true;
        lockScreenCountdownDuration = 10000;
        };
        ui = {
        fontDefault = "SF Pro Display";
        fontDefaultScale = 1.05;
        fontFixedScale = 1.05;
        tooltipsEnabled = true;
        panelsAttachedToBar = true;
        settingsPanelMode = "attached";
        wifiDetailsViewMode = "grid";
        bluetoothDetailsViewMode = "grid";
        networkPanelView = "wifi";
        bluetoothHideUnnamedDevices = false;
        boxBorderEnabled = false;
      };
      location = {
        name = "Izhevsk, Russia";
        weatherEnabled = true;
        weatherShowEffects = false;
        useFahrenheit = false;
        use12hourFormat = false;
        showWeekNumberInCalendar = false;
        showCalendarEvents = true;
        showCalendarWeather = true;
        analogClockInCalendar = false;
        firstDayOfWeek = -1;
        hideWeatherTimezone = false;
        hideWeatherCityName = false;
        };
        calendar = {
        cards = [
        {
        enabled = true;
        id = "calendar-header-card";
        }
        {
        enabled = true;
        id = "calendar-month-card";
        }
        {
        enabled = true;
        id = "weather-card";
        }
        ];
        };
        wallpaper = {
        enabled = true;
        overviewEnabled = false;
        directory = "/home/mk/Pictures/Wallpapers";
        monitorDirectories = [ ];
        enableMultiMonitorDirectories = false;
        showHiddenFiles = false;
        viewMode = "single";
        setWallpaperOnAllMonitors = true;
        fillMode = "crop";
        fillColor = "#000000";
        useSolidColor = false;
        solidColor = "#1a1a2e";
        automationEnabled = false;
        wallpaperChangeMode = "random";
        randomIntervalSec = 300;
        transitionDuration = 1500;
        transitionType = "random";
        transitionEdgeSmoothness = 0.05;
        panelPosition = "follow_bar";
        hideWallpaperFilenames = false;
        useWallhaven = false;
        wallhavenQuery = "";
        wallhavenSorting = "relevance";
        wallhavenOrder = "desc";
        wallhavenCategories = "111";
        wallhavenPurity = "100";
              wallhavenRatios = "";
              wallhavenApiKey = "";
              wallhavenResolutionMode = "atleast";
              wallhavenResolutionWidth = "";
              wallhavenResolutionHeight = "";
            };
            appLauncher = {
              enableClipboardHistory = true;
              autoPasteClipboard = false;
              enableClipPreview = true;
              clipboardWrapText = true;
              position = "center";
              pinnedApps = [ ];
              useApp2Unit = false;
              sortByMostUsed = true;
              terminalCommand = "foot -e";
              customLaunchPrefixEnabled = false;
              customLaunchPrefix = "";
              viewMode = "list";
              showCategories = false;
              iconMode = "tabler";
              showIconBackground = false;
              enableSettingsSearch = true;
              ignoreMouseInput = false;
              screenshotAnnotationTool = "";
            };
            controlCenter = {
              position = "close_to_bar_button";
              diskPath = "/";
              shortcuts = {
                left = [
                  {
                    id = "Network";
                  }
                  {
                    id = "Bluetooth";
                  }
                  {
                    id = "WallpaperSelector";
                  }
                  {
                    id = "NoctaliaPerformance";
                  }
                ];
                right = [
                  {
                    id = "Notifications";
                  }
                  {
                    id = "PowerProfile";
                  }
                  {
                    id = "KeepAwake";
                  }
                  {
                    id = "NightLight";
                  }
                ];
              };
              cards = [
                {
                  enabled = true;
                  id = "profile-card";
                }
                {
                  enabled = true;
                  id = "shortcuts-card";
                }
                {
                  enabled = true;
                  id = "audio-card";
                }
                {
                  enabled = false;
                  id = "brightness-card";
                }
                {
                  enabled = true;
                  id = "weather-card";
                }
                {
                  enabled = true;
                  id = "media-sysmon-card";
                }
              ];
            };
            systemMonitor = {
              cpuWarningThreshold = 80;
              cpuCriticalThreshold = 90;
              tempWarningThreshold = 80;
              tempCriticalThreshold = 90;
              gpuWarningThreshold = 80;
              gpuCriticalThreshold = 90;
              memWarningThreshold = 80;
              memCriticalThreshold = 90;
              swapWarningThreshold = 80;
              swapCriticalThreshold = 90;
              diskWarningThreshold = 80;
              diskCriticalThreshold = 90;
              cpuPollingInterval = 3000;
              tempPollingInterval = 3000;
              gpuPollingInterval = 3000;
              enableDgpuMonitoring = false;
              memPollingInterval = 3000;
              diskPollingInterval = 30000;
              networkPollingInterval = 3000;
              loadAvgPollingInterval = 3000;
              useCustomColors = false;
              warningColor = "";
              criticalColor = "";
              externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
            };
            dock = {
              enabled = true;
              position = "bottom";
              displayMode = "auto_hide";
              floatingRatio = 1;
              size = 1;
              onlySameOutput = false;
              monitors = [ ];
              pinnedApps = [ ];
              colorizeIcons = true;
              pinnedStatic = false;
              inactiveIndicators = false;
              animationSpeed = 1;
            };
            network = {
              wifiEnabled = true;
              bluetoothRssiPollingEnabled = false;
              bluetoothRssiPollIntervalMs = 10000;
              wifiDetailsViewMode = "grid";
              bluetoothDetailsViewMode = "grid";
              bluetoothHideUnnamedDevices = false;
            };
            sessionMenu = {
              enableCountdown = true;
              countdownDuration = 10000;
              position = "center";
              showHeader = true;
              largeButtonsStyle = false;
              largeButtonsLayout = "grid";
              showNumberLabels = true;
              powerOptions = [
                {
                  action = "lock";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
                {
                  action = "suspend";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
                {
                  action = "hibernate";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
                {
                  action = "reboot";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
                {
                  action = "logout";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
                {
                  action = "shutdown";
                  command = "";
                  countdownEnabled = true;
                  enabled = true;
                }
              ];
            };
            notifications = {
              enabled = true;
              monitors = [ ];
              location = "top_right";
              overlayLayer = true;
              respectExpireTimeout = false;
              lowUrgencyDuration = 3;
              normalUrgencyDuration = 8;
              criticalUrgencyDuration = 15;
              enableKeyboardLayoutToast = false;
              saveToHistory = {
                low = true;
                normal = true;
                critical = true;
              };
              sounds = {
                enabled = false;
                volume = 0.5;
                separateSounds = false;
                criticalSoundFile = "";
                normalSoundFile = "";
                lowSoundFile = "";
                excludedApps = "discord,firefox,chrome,chromium,edge";
              };
              enableMediaToast = false;
            };
            osd = {
              enabled = true;
              location = "top_right";
              autoHideMs = 2000;
              overlayLayer = true;
              enabledTypes = [
                0
                1
                2
              ];
              monitors = [ ];
            };
            audio = {
              volumeStep = 5;
              volumeOverdrive = false;
              cavaFrameRate = 30;
              visualizerType = "linear";
              mprisBlacklist = [ ];
              preferredPlayer = "";
              volumeFeedback = false;
            };
            brightness = {
              brightnessStep = 5;
              enforceMinimum = true;
              enableDdcSupport = true;
            };
            colorSchemes = {
              useWallpaperColors = false;
              predefinedScheme = "Noctalia (default)";
              darkMode = false;
              schedulingMode = "off";
              manualSunrise = "06:30";
              manualSunset = "18:30";
              generationMethod = "tonal-spot";
              monitorForColors = "";
            };
            templates = {
              activeTemplates = [
                {
                  enabled = true;
                  id = "qt";
                }
              ];
              enableUserTheming = false;
            };
            nightLight = {
              enabled = true;
              forced = false;
              autoSchedule = true;
              nightTemp = "5000";
              dayTemp = "6500";
              manualSunrise = "06:30";
              manualSunset = "18:30";
            };
            hooks = {
              enabled = false;
              wallpaperChange = "";
              darkModeChange = "";
              screenLock = "";
              screenUnlock = "";
              performanceModeEnabled = "";
              performanceModeDisabled = "";
              startup = "";
              session = "";
            };
            desktopWidgets = {
              enabled = false;
              gridSnap = false;
              monitorWidgets = [ ];
            };

          };
        };
      }
