{...}: {
  programs.vesktop = {
    enable = true;

    settings = {
      autoUpdate = true;
      autoUpdateNotification = true;
      useQuickCss = true;

      eagerPatches = false;
      enableReactDevtools = false;
      frameless = false;
      transparent = false;
      winCtrlQ = false;
      disableMinSize = false;
      winNativeTitleBar = false;

      plugins = {
        ChatInputButtonAPI.enabled = true;
        CommandsAPI.enabled = true;
        DynamicImageModalAPI.enabled = true;
        MemberListDecoratorsAPI.enabled = true;
        MessageAccessoriesAPI.enabled = true;
        MessageDecorationsAPI.enabled = true;
        MessageEventsAPI.enabled = true;
        MessagePopoverAPI.enabled = true;
        MessageUpdaterAPI.enabled = true;
        ServerListAPI.enabled = true;
        UserSettingsAPI.enabled = true;

        AccountPanelServerProfile = {
          enabled = true;
          prioritizeServerProfile = false;
        };

        AlwaysAnimate.enabled = true;
        AlwaysExpandRoles.enabled = true;

        AlwaysTrust = {
          enabled = true;
          domain = true;
          file = true;
        };

        AnonymiseFileNames.enabled = false;
        AppleMusicRichPresence.enabled = false;
        "WebRichPresence (arRPC)".enabled = false;

        BetterFolders = {
          enabled = true;
          sidebar = true;
          showFolderIcon = 1;
          keepIcons = false;
          closeAllHomeButton = false;
          closeAllFolders = false;
          forceOpen = false;
          sidebarAnim = true;
          closeOthers = false;
        };

        BetterGifAltText.enabled = true;
        BetterGifPicker.enabled = true;
        BetterNotesBox.enabled = false;
        BetterRoleContext.enabled = false;
        BetterRoleDot.enabled = false;

        BetterSessions = {
          enabled = true;
          backgroundCheck = false;
        };

        BetterSettings = {
          enabled = true;
          disableFade = true;
          eagerLoad = true;
          organizeMenu = true;
        };

        BetterUploadButton.enabled = true;
        BiggerStreamPreview.enabled = true;

        BlurNSFW = {
          enabled = true;
          blurAmount = 10;
        };

        CallTimer = {
          enabled = true;
          format = "stopwatch";
        };

        ClearURLs.enabled = true;

        ClientTheme = {
          enabled = false;
          color = "313338";
        };

        ColorSighted.enabled = false;

        ConsoleJanitor = {
          enabled = true;
          disableLoggers = false;
          disableSpotifyLogger = true;
          whitelistedLoggers = "GatewaySocket; Routing/Utils";
        };

        ConsoleShortcuts.enabled = false;
        CopyEmojiMarkdown.enabled = true;
        CopyFileContents.enabled = true;
        CopyStickerLinks.enabled = false;
        CopyUserURLs.enabled = true;
        CrashHandler.enabled = true;

        CtrlEnterSend = {
          enabled = true;
          submitRule = "ctrl+enter";
          sendMessageInTheMiddleOfACodeBlock = true;
        };

        CustomIdle = {
          enabled = true;
          idleTimeout = 10;
          remainInIdle = true;
        };

        CustomRPC.enabled = false;

        Dearrow = {
          enabled = true;
          hideButton = false;
          replaceElements = 0;
          dearrowByDefault = true;
        };

        Decor.enabled = true;
        DisableCallIdle.enabled = true;
        DontRoundMyTimestamps.enabled = true;
        Experiments.enabled = false;
        ExpressionCloner.enabled = true;
        F8Break.enabled = false;
        FakeNitro.enabled = false;

        FakeProfileThemes = {
          enabled = true;
          nitroFirst = true;
        };

        FavoriteEmojiFirst.enabled = true;
        FavoriteGifSearch.enabled = true;
        FixCodeblockGap.enabled = true;

        FixImagesQuality = {
          enabled = true;
          originalImagesInChat = false;
        };

        FixSpotifyEmbeds.enabled = false;
        FixYoutubeEmbeds.enabled = true;
        ForceOwnerCrown.enabled = true;
        FriendInvites.enabled = false;
        FriendsSince.enabled = true;
        FullSearchContext.enabled = true;
        FullUserInChatbox.enabled = false;

        GameActivityToggle = {
          enabled = true;
          location = "PANEL";
          oldIcon = false;
        };

        GifPaste.enabled = false;
        GreetStickerPicker.enabled = false;
        HideMedia.enabled = true;
        iLoveSpam.enabled = false;
        IgnoreActivities.enabled = false;
        ImageFilename.enabled = false;
        ImageLink.enabled = true;

        ImageZoom = {
          enabled = true;
          size = 100;
          zoom = 2;
          saveZoomValues = true;
          nearestNeighbour = false;
          square = false;
        };

        ImplicitRelationships = {
          enabled = true;
          sortByAffinity = true;
        };

        IrcColors.enabled = false;
        KeepCurrentChannel.enabled = true;
        LastFMRichPresence.enabled = false;

        LoadingQuotes = {
          enabled = true;
          replaceEvents = true;
          enableDiscordPresetQuotes = false;
          additionalQuotes = "";
          additionalQuotesDelimiter = "|";
          enablePluginPresetQuotes = true;
        };

        MemberCount = {
          enabled = true;
          memberList = true;
          toolTip = true;
          voiceActivity = true;
        };

        MentionAvatars.enabled = false;

        MessageClickActions = {
          enabled = true;
          requireModifier = false;
          enableDoubleClickToEdit = true;
          enableDoubleClickToReply = true;
        };

        MessageLatency.enabled = false;

        MessageLinkEmbeds = {
          enabled = true;
          listMode = "blacklist";
          idList = "";
          autoEmbed = false;
        };

        MessageLogger = {
          enabled = true;
          deleteStyle = "text";
          logDeletes = true;
          logEdits = true;
          ignoreBots = false;
          ignoreSelf = false;
          ignoreUsers = "";
          ignoreChannels = "";
          ignoreGuilds = "";
          collapseDeleted = false;
          inlineEdits = true;
        };

        MessageTags = {
          enabled = true;
          clyde = true;
        };

        MoreCommands.enabled = true;
        MoreKaomoji.enabled = true;
        MoreUserTags.enabled = true;
        Moyai.enabled = true;

        MutualGroupDMs = {
          enabled = true;
          displayAvatars = true;
          userLimit = 6;
        };

        NewGuildSettings.enabled = false;
        NoBlockedMessages.enabled = false;
        NoDefaultHangStatus.enabled = false;
        NoDevtoolsWarning.enabled = true;
        NoF1.enabled = true;
        NoMosaic.enabled = false;

        NoOnboardingDelay = {
          enabled = true;
          customOnboarding = false;
        };

        NoPendingCount.enabled = false;
        NoProfileThemes.enabled = false;
        NoReplyMention.enabled = false;
        NoRPC.enabled = false;
        NoScreensharePreview.enabled = false;
        NoServerEmojis.enabled = false;
        NoSystemBadge.enabled = false;
        NoTypingAnimation.enabled = false;
        NoUnblockToJump.enabled = false;
        NormalizeMessageLinks.enabled = true;
        NotificationVolume.enabled = false;
        NSFWGateBypass.enabled = false;
        OnePingPerDM.enabled = false;
        oneko.enabled = false;
        OpenInApp.enabled = false;
        OverrideForumDefaults.enabled = false;
        PartyMode.enabled = false;
        PauseInvitesForever.enabled = true;

        PermissionFreeWill = {
          enabled = true;
          lockout = true;
          onboarding = true;
        };

        PermissionsViewer.enabled = true;
        petpet.enabled = true;
        PictureInPicture.enabled = true;

        PinDMs = {
          enabled = true;
          userBasedCategoryList = {
            "769200828065513513" = [];
          };
          canCollapseDmSection = false;
          pinOrder = 0;
        };

        PlainFolderIcon.enabled = false;

        PlatformIndicators = {
          enabled = true;
          colorMobileIndicator = true;
          list = true;
          badges = true;
          messages = true;
        };

        PreviewMessage.enabled = true;
        QuickMention.enabled = true;
        QuickReply.enabled = true;
        ReactErrorDecoder.enabled = true;
        ReadAllNotificationsButton.enabled = true;

        RelationshipNotifier = {
          enabled = true;
          offlineRemovals = true;
          groups = true;
          servers = true;
          friends = true;
          friendRequestCancels = true;
          notices = false;
        };

        ReplaceGoogleSearch.enabled = true;
        ReplyTimestamp.enabled = true;
        RevealAllSpoilers.enabled = true;
        ReverseImageSearch.enabled = true;
        ReviewDB.enabled = false;

        RoleColorEverywhere = {
          enabled = true;
          chatMentions = true;
          memberList = true;
          voiceUsers = true;
          reactorsList = true;
          pollResults = true;
          colorChatMessages = false;
        };

        SecretRingToneEnabler.enabled = false;

        Summaries = {
          enabled = true;
          summaryExpiryThresholdDays = 3;
        };

        SendTimestamps = {
          enabled = true;
          replaceMessageContents = true;
        };

        ServerInfo.enabled = true;

        ServerListIndicators = {
          enabled = true;
          mode = 2;
        };

        ShikiCodeblocks = {
          enabled = true;
          useDevIcon = "GREYSCALE";
          theme = "https://cdn.jsdelivr.net/gh/shikijs/textmate-grammars-themes@bc5436518111d87ea58eb56d97b3f9bec30e6b83/packages/tm-themes/themes/catppuccin-mocha.json";
          tryHljs = "SECONDARY";
          bgOpacity = 100;
        };

        ShowAllMessageButtons.enabled = true;

        ShowConnections = {
          enabled = true;
          iconSpacing = 1;
          iconSize = 32;
        };

        ShowHiddenChannels = {
          enabled = true;
          showMode = 0;
          hideUnreads = true;
          defaultAllowedUsersAndRolesDropdownState = true;
        };

        ShowHiddenThings = {
          enabled = true;
          showTimeouts = true;
          showInvitesPaused = true;
          showModView = true;
        };

        ShowMeYourName.enabled = false;
        ShowTimeoutDuration.enabled = true;
        SilentMessageToggle.enabled = false;

        SilentTyping = {
          enabled = true;
          isEnabled = true;
          showIcon = false;
          contextMenu = true;
        };

        SortFriendRequests = {
          enabled = true;
          showDates = false;
        };

        SpotifyControls.enabled = false;
        SpotifyCrack.enabled = false;
        SpotifyShareCommands.enabled = false;
        StartupTimings.enabled = false;
        StickerPaste.enabled = false;
        StreamerModeOnStream.enabled = false;

        SuperReactionTweaks = {
          enabled = true;
          unlimitedSuperReactionPlaying = false;
          superReactionPlayingLimit = 20;
          superReactByDefault = true;
        };

        TextReplace.enabled = false;
        ThemeAttributes.enabled = true;

        Translate = {
          enabled = true;
          autoTranslate = false;
          service = "google";
          receivedInput = "fr";
          receivedOutput = "en";
          sentInput = "auto";
          sentOutput = "fr";
          showAutoTranslateTooltip = true;
        };

        TypingIndicator = {
          enabled = true;
          includeMutedChannels = false;
          includeCurrentChannel = true;
          indicatorMode = 3;
        };

        TypingTweaks = {
          enabled = true;
          alternativeFormatting = true;
          showRoleColors = true;
          showAvatars = true;
        };

        Unindent.enabled = true;
        UnlockedAvatarZoom.enabled = true;
        UnsuppressEmbeds.enabled = false;

        UserMessagesPronouns = {
          enabled = true;
          showSelf = true;
          pronounsFormat = "LOWERCASE";
        };

        UserVoiceShow = {
          enabled = true;
          showInUserProfileModal = true;
          showInMemberList = true;
          showInMessages = true;
        };

        USRBG = {
          enabled = true;
          voiceBackground = true;
          nitroFirst = true;
        };

        ValidReply.enabled = true;
        ValidUser.enabled = true;
        VoiceChatDoubleClick.enabled = false;
        VcNarrator.enabled = false;
        VencordToolbox.enabled = true;
        ViewIcons.enabled = true;

        ViewRaw = {
          enabled = true;
          clickMethod = "Left";
        };

        VoiceDownload.enabled = true;
        VoiceMessages.enabled = false;

        VolumeBooster = {
          enabled = true;
          multiplier = 2;
        };

        WebKeybinds.enabled = true;

        WebScreenShareFixes = {
          enabled = true;
          experimentalAV1Support = false;
        };

        WhoReacted.enabled = true;
        XSOverlay.enabled = false;
        YoutubeAdblock.enabled = true;
        BadgeAPI.enabled = true;

        NoTrack = {
          enabled = true;
          disableAnalytics = true;
        };

        Settings = {
          enabled = true;
          settingsLocation = "aboveNitro";
        };

        DisableDeepLinks.enabled = true;
        SupportHelper.enabled = true;
        WebContextMenus.enabled = true;
      };

      uiElements = {
        chatBarButtons = {};
        messagePopoverButtons = {};
      };

      notifications = {
        timeout = 5000;
        position = "bottom-right";
        useNative = "not-focused";
        logLimit = 50;
      };

      cloud = {
        authenticated = false;
        url = "https://api.vencord.dev/";
        settingsSync = false;
        settingsSyncVersion = 1768939492817;
      };
    };
  };
}
