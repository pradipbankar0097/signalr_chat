﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewForm.aspx.cs" Inherits="SignalRChat.NewForm" %>

<!DOCTYPE html>

<html
  class="js serviceworker adownload cssanimations csstransitions webp webp-alpha webp-animation webp-lossless"
  dir="LTR"
  loc="en-GB"
  lang="en"
>
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>WhatsApp</title>
    <meta name="viewport" content="width=device-width" />
    <meta name="google" content="notranslate" />
    <meta name="format-detection" content="telephone=no" />
    <meta
      name="description"
      content="Quickly send and receive WhatsApp messages right from your computer."
    />
    <meta
      name="og:description"
      content="Quickly send and receive WhatsApp messages right from your computer."
    />
    <meta name="og:url" content="https://web.whatsapp.com/" />
    <meta name="og:title" content="WhatsApp Web" />
    <meta
      name="og:image"
      content="https://static.facebook.com/images/whatsapp/www/whatsapp-promo.png"
    />
    <link
      rel="apple-touch-icon"
      sizes="194x194"
      href="https://web.whatsapp.com/apple-touch-icon.png"
      type="image/png"
    />
    <style>
      #app,
      body,
      html {
        height: 100%;
        width: 100%;
        overflow: hidden;
        padding: 0;
        margin: 0;
      }
      #app {
        position: absolute;
        top: 0;
        left: 0;
      }
      #initial_startup,
      #startup {
        width: 100%;
        height: 100%;
        position: fixed;
        background-color: #f0f0f0;
        -moz-user-select: none;
        -webkit-user-select: none;
        display: flex;
        align-items: center;
        justify-content: center;
        display: -webkit-box;
        display: -webkit-flex;
        -webkit-align-items: center;
        -webkit-justify-content: center;
        flex-direction: column;
        -webkit-flex-direction: column;
      }
      .spinner-container {
        -webkit-animation: rotate 2s linear infinite;
        animation: rotate 2s linear infinite;
        z-index: 2;
      }
      .spinner-path {
        stroke-dasharray: 1, 150;
        stroke-dashoffset: 0;
        stroke: #acb9bf;
        stroke-linecap: round;
        -webkit-animation: dash 1.5s ease-in-out infinite;
        animation: dash 1.5s ease-in-out infinite;
      }
      @keyframes rotate {
        100% {
          transform: rotate(360deg);
        }
      }
      @-webkit-keyframes rotate {
        100% {
          -webkit-transform: rotate(360deg);
        }
      }
      @keyframes dash {
        0% {
          stroke-dasharray: 1, 150;
          stroke-dashoffset: 0;
        }
        50% {
          stroke-dasharray: 90, 150;
          stroke-dashoffset: -35;
        }
        100% {
          stroke-dasharray: 90, 150;
          stroke-dashoffset: -124;
        }
      }
      @-webkit-keyframes dash {
        0% {
          stroke-dasharray: 1, 150;
          stroke-dashoffset: 0;
        }
        50% {
          stroke-dasharray: 90, 150;
          stroke-dashoffset: -35;
        }
        100% {
          stroke-dasharray: 90, 150;
          stroke-dashoffset: -124;
        }
      }
      .progress-container {
        width: 360px;
        position: fixed;
        padding-top: 120px;
        top: 50%;
        left: 50%;
        margin-left: -180px;
      }
      progress {
        -webkit-appearance: none;
        appearance: none;
        width: 100%;
        height: 3px;
        border: none;
        margin: 0;
        color: #00d9bb;
        background-color: #e6e6e6;
      }
      progress[value]::-webkit-progress-bar {
        background-color: #e6e6e6;
      }
      progress[value]::-webkit-progress-value {
        background-color: #00d9bb;
        transition: width 0.45s ease;
      }
      progress[value]::-moz-progress-bar {
        background-color: #00d9bb;
        transition: width 0.45s ease;
      }
    </style>
    <link
      href="./WhatsApp_files/bootstrap_qr-e892ca30934b9f1b9db6.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="./WhatsApp_files/bootstrap_main.4901d46d1d36a610ddfc.css"
    />
    <style id="asset-style" type="text/css"></style>
    <link
      rel="stylesheet"
      type="text/css"
      href="./WhatsApp_files/lazy_loaded_high_priority_components_lazy_loaded_low_priority_components.fc5b5a8da2673c56e501.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="./WhatsApp_files/lazy_loaded_high_priority_components.73ec82359679ea8b20b9.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="./WhatsApp_files/lazy_loaded_low_priority_components.c9e655ed9d61a3f90746.css"
    />
    <link
      id="favicon"
      rel="shortcut icon"
      type="image/png"
      href="https://web.whatsapp.com/img/favicon_c5088e888c97ad440a61d247596f88e5.png"
      src="/img/favicon_c5088e888c97ad440a61d247596f88e5.png"
    />
  </head>
  <body class="web">
    <script>
        try {
            var systemThemeDark,
                theme = window.localStorage.getItem("theme"),
                systemThemeMode = window.localStorage.getItem("system-theme-mode");
            if (("true" === systemThemeMode || !theme) && window.matchMedia) {
                var systemTheme = window.matchMedia("(prefers-color-scheme: dark)");
                systemThemeDark = systemTheme && systemTheme.matches;
            }
            ('"dark"' === theme || systemThemeDark) &&
                document.body.classList.add("dark");
        } catch (e) { }
    </script>
    <div id="app">
      <div tabindex="-1" class="_3h3LX _34ybp app-wrapper-web font-fix os-win">
        <span></span><span></span><span></span><span></span><span></span>
        <div tabindex="-1" class="_3QfZd two">
          <div class="_3-dtC"></div>
          <div class="Akuo4">
            <div class="_1Flk2 _2DPZK"><span class="_2zn9Y"></span></div>
            <div class="_1Flk2 _1sFTb"><span class="_2zn9Y"></span></div>
            <div class="_1Flk2 _3xysY"><span class="_2zn9Y"></span></div>
          </div>
          <div class="_1Flk2 _2DPZK">
            <div id="side" class="_3U29Q">
              <header class="_1R3Un">
                <div class="_1KBFI">
                  <div
                    class="-y4n1"
                    style="height: 40px; width: 40px; cursor: pointer"
                  >
                    <div class="_27MZN">
                      <span
                        data-testid="default-user"
                        data-icon="default-user"
                        class=""
                        ><svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 212 212"
                          width="212"
                          height="212"
                        >
                          <path
                            fill="#DFE5E7"
                            class="background"
                            d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                          ></path>
                          <path
                            fill="#FFF"
                            class="primary"
                            d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                          ></path></svg
                      ></span>
                    </div>
                    <img
                      src="./WhatsApp_files/pp"
                      alt=""
                      draggable="false"
                      class="_18-9u _1bvi5 _3-8er"
                      style="visibility: visible"
                    />
                  </div>
                </div>
                <div class="_2XP8p">
                  <div class="_1ljzS pnYZD">
                    <span
                      ><div class="_2n-zq">
                        <div
                          aria-disabled="false"
                          role="button"
                          tabindex="0"
                          title="Status"
                          aria-label="Status"
                        >
                          <span
                            data-testid="status-v3-unread"
                            data-icon="status-v3-unread"
                            class=""
                            ><svg
                              id="df9d3429-f0ef-48b5-b5eb-f9d27b2deba6"
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              width="24"
                              height="24"
                            >
                              <path
                                fill="currentColor"
                                d="M12.072 1.761a10.05 10.05 0 0 0-9.303 5.65.977.977 0 0 0 1.756.855 8.098 8.098 0 0 1 7.496-4.553.977.977 0 1 0 .051-1.952zM1.926 13.64a10.052 10.052 0 0 0 7.461 7.925.977.977 0 0 0 .471-1.895 8.097 8.097 0 0 1-6.012-6.386.977.977 0 0 0-1.92.356zm13.729 7.454a10.053 10.053 0 0 0 6.201-8.946.976.976 0 1 0-1.951-.081v.014a8.097 8.097 0 0 1-4.997 7.209.977.977 0 0 0 .727 1.813l.02-.009z"
                              ></path>
                              <path
                                fill="#009588"
                                d="M19 1.5a3 3 0 1 1 0 6 3 3 0 0 1 0-6z"
                              ></path></svg
                          ></span>
                        </div>
                        <span></span>
                      </div>
                      <div class="_2n-zq">
                        <div
                          aria-disabled="false"
                          role="button"
                          tabindex="0"
                          title="New chat"
                          aria-label="New chat"
                        >
                          <span data-testid="chat" data-icon="chat" class=""
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              width="24"
                              height="24"
                            >
                              <path
                                fill="currentColor"
                                d="M19.005 3.175H4.674C3.642 3.175 3 3.789 3 4.821V21.02l3.544-3.514h12.461c1.033 0 2.064-1.06 2.064-2.093V4.821c-.001-1.032-1.032-1.646-2.064-1.646zm-4.989 9.869H7.041V11.1h6.975v1.944zm3-4H7.041V7.1h9.975v1.944z"
                              ></path></svg
                          ></span>
                        </div>
                        <span></span>
                      </div>
                      <div class="_2n-zq">
                        <div
                          aria-disabled="false"
                          role="button"
                          tabindex="0"
                          title="Menu"
                          aria-label="Menu"
                        >
                          <span data-testid="menu" data-icon="menu" class=""
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              width="24"
                              height="24"
                            >
                              <path
                                fill="currentColor"
                                d="M12 7a2 2 0 1 0-.001-4.001A2 2 0 0 0 12 7zm0 2a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 9zm0 6a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 15z"
                              ></path></svg
                          ></span>
                        </div>
                        <span></span></div
                    ></span>
                  </div>
                </div>
              </header>
              <span class="_25tHC"
                ><div class="_18NVz">
                  <div class="_1ADuG _1fl3S _1Lctt">
                    <div class="ns-Tk">
                      <span
                        data-testid="alert-notification"
                        data-icon="alert-notification"
                        class=""
                        ><svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 48 48"
                          width="48"
                          height="48"
                        >
                          <path
                            fill="currentColor"
                            d="M24.154 2C11.919 2 2 11.924 2 24.165S11.919 46.33 24.154 46.33s22.154-9.924 22.154-22.165S36.389 2 24.154 2zm-.744 15.428v-.618c0-.706.618-1.324 1.324-1.324s1.323.618 1.323 1.324v.618c2.559.618 4.412 2.823 4.412 5.559v3.176l-8.294-8.294a5.056 5.056 0 0 1 1.235-.441zm1.323 15.706a1.77 1.77 0 0 1-1.765-1.765h3.529a1.768 1.768 0 0 1-1.764 1.765zm7.236-.883l-1.765-1.765H17.233v-.882l1.765-1.765v-4.853a5.56 5.56 0 0 1 .794-2.912l-2.559-2.559 1.147-1.147 14.735 14.736-1.146 1.147z"
                          ></path></svg
                      ></span>
                    </div>
                    <div class="_2awml">
                      <div class="_1wQdF">Get notified of new messages</div>
                      <div class="_21weU">
                        <span class="GLTDs"
                          ><span class="lHWcP"
                            >Turn on desktop notifications</span
                          ><span
                            data-testid="chevron-right-text"
                            data-icon="chevron-right-text"
                            class="_1__M6"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 12"
                              width="8"
                              height="12"
                            >
                              <path
                                fill="currentColor"
                                d="M2.173 1l4.584 4.725-4.615 4.615-1.103-1.103 3.512-3.512L1 2.173 2.173 1z"
                              ></path></svg></span
                        ></span>
                      </div>
                    </div>
                  </div></div
              ></span>
              <div tabindex="-1" class="SgIJV">
                <div class="_3LX7r">
                  <button class="_1Ek-U">
                    <div class="_1rPZq _1-jFy">
                      <span data-testid="back" data-icon="back" class=""
                        ><svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 24 24"
                          width="24"
                          height="24"
                        >
                          <path
                            fill="currentColor"
                            d="M12 4l1.4 1.4L7.8 11H20v2H7.8l5.6 5.6L12 20l-8-8 8-8z"
                          ></path></svg
                      ></span>
                    </div>
                    <div class="_1rPZq _2w7RB">
                      <span data-testid="search" data-icon="search" class=""
                        ><svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 24 24"
                          width="24"
                          height="24"
                        >
                          <path
                            fill="currentColor"
                            d="M15.009 13.805h-.636l-.22-.219a5.184 5.184 0 0 0 1.256-3.386 5.207 5.207 0 1 0-5.207 5.208 5.183 5.183 0 0 0 3.385-1.255l.221.22v.635l4.004 3.999 1.194-1.195-3.997-4.007zm-4.808 0a3.605 3.605 0 1 1 0-7.21 3.605 3.605 0 0 1 0 7.21z"
                          ></path></svg
                      ></span>
                    </div></button
                  ><span></span>
                  <div class="_2MwRD">Search or start new chat</div>
                  <label class="RPX_m"
                    ><div tabindex="-1" class="_1JAUF _1d1OL">
                      <div class="OTBsx" style="visibility: visible"></div>
                      <div
                        class="_2_1wd copyable-text selectable-text"
                        contenteditable="true"
                        data-tab="3"
                        dir="ltr"
                      ></div></div
                  ></label>
                </div>
              </div>
              <div class="_1C2Q3 F-0gY" id="pane-side">
                <div tabindex="-1" data-tab="4">
                  <div class="" style="pointer-events: auto">
                    <div
                      aria-label="Chat list"
                      class="JnmQF _3QmOg"
                      role="grid"
                      aria-rowcount="92"
                      style="height: 6624px"
                    >
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 91;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(720px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(1)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Reena taai whatsapp"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Reena taai whatsapp</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">11:08 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪thank you😊‬"
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >thank you<img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="😊"
                                        draggable="false"
                                        class="b75 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -60px;
                                        " /></span
                                  ></span>
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 90;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(648px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="FY-SY IT"
                                    class="_35k-1 _1adfa _3-8er"
                                    >FY-SY IT</span
                                  >
                                </div>
                                <div class="_15smv">11:14 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪This message was deleted‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >+91 98902 69142</span
                                    ><span>:&nbsp;</span>
                                    <div class="DcZKr recalled">
                                      <span
                                        data-testid="recalled"
                                        data-icon="recalled"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 17 19"
                                          width="17"
                                          height="19"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M12.629 12.463a5.17 5.17 0 0 0-7.208-7.209l7.208 7.209zm-1.23 1.229L4.191 6.484a5.17 5.17 0 0 0 7.208 7.208zM8.41 2.564a6.91 6.91 0 1 1 0 13.82 6.91 6.91 0 0 1 0-13.82z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <span
                                      dir="auto"
                                      class="_2MgHs _35k-1 _1adfa _3-8er"
                                      >This message was deleted</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div
                                      class="_2TiQe"
                                      aria-label="Muted chat"
                                    >
                                      <span
                                        data-testid="muted"
                                        data-icon="muted"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 18"
                                          width="16"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M11.52 9.206c0-1.4-.778-2.567-1.944-3.111v1.711L11.52 9.75v-.544zm1.945 0c0 .7-.156 1.4-.389 2.022l1.167 1.167c.544-.933.778-2.1.778-3.267 0-3.344-2.333-6.144-5.444-6.844v1.633c2.255.778 3.888 2.8 3.888 5.289zm-11.433-7L1.02 3.217l3.656 3.656H1.02v4.667h3.111l3.889 3.889v-5.211l3.344 3.344c-.544.389-1.089.7-1.789.933v1.633a6.64 6.64 0 0 0 2.878-1.4l1.556 1.556 1.011-1.011-7-7-5.988-6.067zm5.988.778L6.387 4.617 8.02 6.25V2.984z"
                                          ></path></svg
                                      ></span></div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 89;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(576px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(2)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Amit Chandane GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Amit Chandane GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">11:33 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Ho‬"
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Ho</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 88;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(504px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="DCN.... Assessment"
                                    class="_35k-1 _1adfa _3-8er"
                                    >DCN.... Assessment</span
                                  >
                                </div>
                                <div class="_15smv">11:38 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪👍👍‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >+91 70387 54484</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="auto"
                                      class="_35k-1 _1adfa _3-8er"
                                      ><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="👍"
                                        draggable="false"
                                        class="b38 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -20px;
                                        " /><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="👍"
                                        draggable="false"
                                        class="b38 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -20px;
                                        " /></span
                                  ></span>
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 87;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(432px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="OOP project"
                                    class="_35k-1 _1adfa _3-8er"
                                    >OOP project</span
                                  >
                                </div>
                                <div class="_15smv">12:08 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Transaction‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >yashashree</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Transaction</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 86;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(360px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="DMS - SEIT"
                                    class="_35k-1 _1adfa _3-8er"
                                    >DMS - SEIT</span
                                  >
                                </div>
                                <div class="_15smv">1:18 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Ok mam‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >+91 93565 53353</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Ok mam</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 85;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(288px);
                        "
                      >
                        <div tabindex="0" aria-selected="true" role="row">
                          <div class="_2Z4DV _2GVnY">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Pushkar Joshi GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Pushkar Joshi GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">2:08 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪😅‬"
                                    ><span
                                      dir="auto"
                                      class="_35k-1 _1adfa _3-8er"
                                      ><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="😅"
                                        draggable="false"
                                        class="b75 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -40px;
                                        " /></span
                                  ></span>
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 84;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(216px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Jaggu swapnil Bankar"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Jaggu swapnil Bankar</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">2:14 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Okay‬"
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Okay</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 83;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(144px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="IT BUDDIES 💫💥💻"
                                    class="_35k-1 _1adfa _3-8er"
                                    >IT BUDDIES
                                    <img
                                      crossorigin="anonymous"
                                      src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                      alt="💫"
                                      draggable="false"
                                      class="b65 emoji wa _3-8er"
                                      style="
                                        background-position: -20px 0px;
                                      " /><img
                                      crossorigin="anonymous"
                                      src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                      alt="💥"
                                      draggable="false"
                                      class="b64 emoji wa _3-8er"
                                      style="
                                        background-position: 0px -60px;
                                      " /><img
                                      crossorigin="anonymous"
                                      src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                      alt="💻"
                                      draggable="false"
                                      class="b65 emoji wa _3-8er"
                                      style="background-position: -40px -60px"
                                  /></span>
                                </div>
                                <div class="_15smv">yesterday</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪https://gecaur.webex.com/gecaur/j.php?MTID=mc74b1d3d9f31689f5fedac89222b5f91‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >Rutuja</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >https://gecaur.webex.com/gecaur/j.php?MTID=mc74b1d3d9f31689f5fedac89222b5f91</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div class="_2TiQe _3EhXO">
                                      <span
                                        data-testid="pinned"
                                        data-icon="pinned"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 19 19"
                                          width="19"
                                          height="19"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M9.5 18.419C4.574 18.419.581 14.426.581 9.5S4.574.581 9.5.581s8.919 3.993 8.919 8.919-3.993 8.919-8.919 8.919zm2.121-5.708l-.082-2.99 1.647-1.963a1.583 1.583 0 0 0-.188-2.232l-.32-.269a1.58 1.58 0 0 0-2.231.203L8.803 7.42l-2.964.439a.282.282 0 0 0-.14.496l5.458 4.58c.186.157.47.019.464-.224zM5.62 13.994a.504.504 0 0 0 .688-.038l2.204-2.307-1.085-.91-1.889 2.571a.504.504 0 0 0 .082.684z"
                                          ></path></svg
                                      ></span></div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 82;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(72px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(3)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="SY BTECH IT"
                                    class="_35k-1 _1adfa _3-8er"
                                    >SY BTECH IT</span
                                  >
                                </div>
                                <div class="_15smv">2:02 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪For today&#39;s lecture Keep pen and paper with you‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >Varsha Gaikwad</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >For today's lecture Keep pen and paper
                                      with you</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div class="_2TiQe _3EhXO">
                                      <span
                                        data-testid="pinned"
                                        data-icon="pinned"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 19 19"
                                          width="19"
                                          height="19"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M9.5 18.419C4.574 18.419.581 14.426.581 9.5S4.574.581 9.5.581s8.919 3.993 8.919 8.919-3.993 8.919-8.919 8.919zm2.121-5.708l-.082-2.99 1.647-1.963a1.583 1.583 0 0 0-.188-2.232l-.32-.269a1.58 1.58 0 0 0-2.231.203L8.803 7.42l-2.964.439a.282.282 0 0 0-.14.496l5.458 4.58c.186.157.47.019.464-.224zM5.62 13.994a.504.504 0 0 0 .688-.038l2.204-2.307-1.085-.91-1.889 2.571a.504.504 0 0 0 .082.684z"
                                          ></path></svg
                                      ></span></div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 81;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(0px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV _1V5O7">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(4)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="Room no 9"
                                    class="_35k-1 _1adfa _3-8er"
                                    >Room no 9</span
                                  >
                                </div>
                                <div class="_15smv">2:10 pm</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪Ajj uske related hi puchegi‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >Teja</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Ajj uske related hi puchegi</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div
                                      class="_2TiQe"
                                      aria-label="Muted chat"
                                    >
                                      <span
                                        data-testid="muted"
                                        data-icon="muted"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 18"
                                          width="16"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M11.52 9.206c0-1.4-.778-2.567-1.944-3.111v1.711L11.52 9.75v-.544zm1.945 0c0 .7-.156 1.4-.389 2.022l1.167 1.167c.544-.933.778-2.1.778-3.267 0-3.344-2.333-6.144-5.444-6.844v1.633c2.255.778 3.888 2.8 3.888 5.289zm-11.433-7L1.02 3.217l3.656 3.656H1.02v4.667h3.111l3.889 3.889v-5.211l3.344 3.344c-.544.389-1.089.7-1.789.933v1.633a6.64 6.64 0 0 0 2.878-1.4l1.556 1.556 1.011-1.011-7-7-5.988-6.067zm5.988.778L6.387 4.617 8.02 6.25V2.984z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <div class="_2TiQe _3EhXO">
                                      <span
                                        data-testid="pinned"
                                        data-icon="pinned"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 19 19"
                                          width="19"
                                          height="19"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M9.5 18.419C4.574 18.419.581 14.426.581 9.5S4.574.581 9.5.581s8.919 3.993 8.919 8.919-3.993 8.919-8.919 8.919zm2.121-5.708l-.082-2.99 1.647-1.963a1.583 1.583 0 0 0-.188-2.232l-.32-.269a1.58 1.58 0 0 0-2.231.203L8.803 7.42l-2.964.439a.282.282 0 0 0-.14.496l5.458 4.58c.186.157.47.019.464-.224zM5.62 13.994a.504.504 0 0 0 .688-.038l2.204-2.307-1.085-.91-1.889 2.571a.504.504 0 0 0 .082.684z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <div class="_2TiQe">
                                      <span
                                        class="_38M1B"
                                        aria-label="19 unread messages"
                                        >19</span
                                      >
                                    </div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 78;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(1224px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(5)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Vishal Birajdar GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Vishal Birajdar GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">yesterday</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪bye‬"
                                    ><div class="_1Tnge qfllr">
                                      <span
                                        data-testid="status-dblcheck"
                                        data-icon="status-dblcheck"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 18 18"
                                          width="18"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M17.394 5.035l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-.427-.388a.381.381 0 0 0-.578.038l-.451.576a.497.497 0 0 0 .043.645l1.575 1.51a.38.38 0 0 0 .577-.039l7.483-9.602a.436.436 0 0 0-.076-.609zm-4.892 0l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-2.614-2.556a.435.435 0 0 0-.614.007l-.505.516a.435.435 0 0 0 .007.614l3.887 3.8a.38.38 0 0 0 .577-.039l7.483-9.602a.435.435 0 0 0-.075-.609z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <span dir="ltr" class="_35k-1 _1adfa _3-8er"
                                      >bye</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 77;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(1152px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div class="_3xDaM">
                                <div class="_2jC5S">
                                  <span
                                    data-testid="disappearing"
                                    data-icon="disappearing"
                                    class="_1Crzo"
                                    ><svg
                                      width="12"
                                      height="12"
                                      viewBox="0 0 12 12"
                                      xmlns="http://www.w3.org/2000/svg"
                                    >
                                      <path
                                        d="M6 1.579a4.421 4.421 0 1 1 0 8.842A4.421 4.421 0 0 1 6 1.58zm2.677 1.985a.28.28 0 0 0-.379-.015l-2.7 2.316a.28.28 0 0 0-.016.409l.466.467a.28.28 0 0 0 .41-.016l2.315-2.701a.28.28 0 0 0-.015-.379l-.08-.081z"
                                        fill="currentColor"
                                      ></path>
                                      <path
                                        d="M0 6a6 6 0 1 0 6-6 .316.316 0 0 0 0 .632A5.368 5.368 0 1 1 .632 6 .316.316 0 0 0 0 6z"
                                        fill="currentColor"
                                      ></path></svg
                                  ></span>
                                </div>
                                <div
                                  class="-y4n1"
                                  style="height: 49px; width: 49px"
                                >
                                  <div class="_27MZN">
                                    <span
                                      data-testid="default-user"
                                      data-icon="default-user"
                                      class=""
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 212 212"
                                        width="212"
                                        height="212"
                                      >
                                        <path
                                          fill="#DFE5E7"
                                          class="background"
                                          d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                        ></path>
                                        <path
                                          fill="#FFF"
                                          class="primary"
                                          d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                  <img
                                    src="./WhatsApp_files/pp(6)"
                                    alt=""
                                    draggable="false"
                                    class="_18-9u _1bvi5 _3-8er"
                                    style="visibility: visible"
                                  />
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="hiwale mama"
                                      class="_35k-1 _1adfa _3-8er"
                                      >hiwale mama</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">yesterday</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Photo‬"
                                    ><div class="DcZKr status-image _2L4Uz">
                                      <span
                                        data-testid="status-image"
                                        data-icon="status-image"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 20"
                                          width="16"
                                          height="20"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M13.822 4.668H7.14l-1.068-1.09a1.068 1.068 0 0 0-.663-.278H3.531c-.214 0-.51.128-.656.285L1.276 5.296c-.146.157-.266.46-.266.675v1.06l-.001.003v6.983c0 .646.524 1.17 1.17 1.17h11.643a1.17 1.17 0 0 0 1.17-1.17v-8.18a1.17 1.17 0 0 0-1.17-1.169zm-5.982 8.63a3.395 3.395 0 1 1 0-6.79 3.395 3.395 0 0 1 0 6.79zm0-5.787a2.392 2.392 0 1 0 0 4.784 2.392 2.392 0 0 0 0-4.784z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <span
                                      dir="auto"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Photo</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div
                                      class="_2TiQe"
                                      aria-label="Muted chat"
                                    >
                                      <span
                                        data-testid="muted"
                                        data-icon="muted"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 18"
                                          width="16"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M11.52 9.206c0-1.4-.778-2.567-1.944-3.111v1.711L11.52 9.75v-.544zm1.945 0c0 .7-.156 1.4-.389 2.022l1.167 1.167c.544-.933.778-2.1.778-3.267 0-3.344-2.333-6.144-5.444-6.844v1.633c2.255.778 3.888 2.8 3.888 5.289zm-11.433-7L1.02 3.217l3.656 3.656H1.02v4.667h3.111l3.889 3.889v-5.211l3.344 3.344c-.544.389-1.089.7-1.789.933v1.633a6.64 6.64 0 0 0 2.878-1.4l1.556 1.556 1.011-1.011-7-7-5.988-6.067zm5.988.778L6.387 4.617 8.02 6.25V2.984z"
                                          ></path></svg
                                      ></span></div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <span
                            aria-label="New messages will disappear from this chat after 7 days."
                          ></span>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 76;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(1080px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Shivam Sandbhor GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Shivam Sandbhor GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">yesterday</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪Programming Assignment 4 Exception Handling.docx‬"
                                    ><div class="_1Tnge">
                                      <span
                                        data-testid="status-dblcheck"
                                        data-icon="status-dblcheck"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 18 18"
                                          width="18"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M17.394 5.035l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-.427-.388a.381.381 0 0 0-.578.038l-.451.576a.497.497 0 0 0 .043.645l1.575 1.51a.38.38 0 0 0 .577-.039l7.483-9.602a.436.436 0 0 0-.076-.609zm-4.892 0l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-2.614-2.556a.435.435 0 0 0-.614.007l-.505.516a.435.435 0 0 0 .007.614l3.887 3.8a.38.38 0 0 0 .577-.039l7.483-9.602a.435.435 0 0 0-.075-.609z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <div class="DcZKr status-document _2L4Uz">
                                      <span
                                        data-testid="status-document"
                                        data-icon="status-document"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 13 20"
                                          width="13"
                                          height="20"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M10.2 3H2.5C1.7 3 1 3.7 1 4.5v10.1c0 .7.7 1.4 1.5 1.4h7.7c.8 0 1.5-.7 1.5-1.5v-10C11.6 3.7 11 3 10.2 3zm-2.6 9.7H3.5v-1.3h4.1v1.3zM9.3 10H3.5V8.7h5.8V10zm0-2.7H3.5V6h5.8v1.3z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <span
                                      dir="auto"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Programming Assignment 4 Exception
                                      Handling.docx</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 75;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(1008px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(7)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Anna"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Anna</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">yesterday</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪vahini sathi b-complex goli anaychi ahe‬"
                                    ><div class="_1Tnge qfllr">
                                      <span
                                        data-testid="status-dblcheck"
                                        data-icon="status-dblcheck"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 18 18"
                                          width="18"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M17.394 5.035l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-.427-.388a.381.381 0 0 0-.578.038l-.451.576a.497.497 0 0 0 .043.645l1.575 1.51a.38.38 0 0 0 .577-.039l7.483-9.602a.436.436 0 0 0-.076-.609zm-4.892 0l-.57-.444a.434.434 0 0 0-.609.076l-6.39 8.198a.38.38 0 0 1-.577.039l-2.614-2.556a.435.435 0 0 0-.614.007l-.505.516a.435.435 0 0 0 .007.614l3.887 3.8a.38.38 0 0 0 .577-.039l7.483-9.602a.435.435 0 0 0-.075-.609z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    <span dir="ltr" class="_35k-1 _1adfa _3-8er"
                                      >vahini sathi b-complex goli anaychi
                                      ahe</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 74;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(936px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(8)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="yashashree GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >yashashree GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">8:51 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪🤣🤣🤣‬"
                                    ><span
                                      dir="auto"
                                      class="_35k-1 _1adfa _3-8er"
                                      ><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="🤣"
                                        draggable="false"
                                        class="b91 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -20px;
                                        " /><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="🤣"
                                        draggable="false"
                                        class="b91 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -20px;
                                        " /><img
                                        crossorigin="anonymous"
                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                        alt="🤣"
                                        draggable="false"
                                        class="b91 emoji wa _3-8er"
                                        style="
                                          background-position: -40px -20px;
                                        " /></span
                                  ></span>
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 73;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(864px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-group"
                                    data-icon="default-group"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M105.946.25C164.318.25 211.64 47.596 211.64 106s-47.322 105.75-105.695 105.75C47.571 211.75.25 164.404.25 106S47.571.25 105.946.25z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M61.543 100.988c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.174 14.246 14.246 14.246zm8.159 17.541a48.192 48.192 0 0 1 8.545-6.062c-4.174-2.217-9.641-3.859-16.704-3.859-21.844 0-28.492 15.67-28.492 15.67v8.073h26.181l.105-.248c.303-.713 3.164-7.151 10.365-13.574zm80.755-9.921c-6.854 0-12.21 1.543-16.336 3.661a48.223 48.223 0 0 1 8.903 6.26c7.201 6.422 10.061 12.861 10.364 13.574l.105.248h25.456v-8.073c-.001 0-6.649-15.67-28.492-15.67zm0-7.62c8.073 0 14.246-6.174 14.246-14.246s-6.173-14.246-14.246-14.246-14.246 6.173-14.246 14.246 6.173 14.246 14.246 14.246zm-44.093 3.21a23.21 23.21 0 0 0 4.464-.428c.717-.14 1.419-.315 2.106-.521 1.03-.309 2.023-.69 2.976-1.138a21.099 21.099 0 0 0 3.574-2.133 20.872 20.872 0 0 0 5.515-6.091 21.283 21.283 0 0 0 2.121-4.823 22.16 22.16 0 0 0 .706-3.193c.16-1.097.242-2.224.242-3.377s-.083-2.281-.242-3.377a22.778 22.778 0 0 0-.706-3.193 21.283 21.283 0 0 0-3.272-6.55 20.848 20.848 0 0 0-4.364-4.364 21.099 21.099 0 0 0-3.574-2.133 21.488 21.488 0 0 0-2.976-1.138 22.33 22.33 0 0 0-2.106-.521 23.202 23.202 0 0 0-4.464-.428c-12.299 0-21.705 9.405-21.705 21.704 0 12.299 9.406 21.704 21.705 21.704zM145.629 131a36.739 36.739 0 0 0-1.2-1.718 39.804 39.804 0 0 0-3.367-3.967 41.481 41.481 0 0 0-3.442-3.179 42.078 42.078 0 0 0-5.931-4.083 43.725 43.725 0 0 0-3.476-1.776c-.036-.016-.069-.034-.104-.05-5.692-2.581-12.849-4.376-21.746-4.376-8.898 0-16.055 1.795-21.746 4.376-.196.089-.379.185-.572.276a43.316 43.316 0 0 0-3.62 1.917 42.32 42.32 0 0 0-5.318 3.716 41.501 41.501 0 0 0-3.443 3.179 40.632 40.632 0 0 0-3.366 3.967c-.452.61-.851 1.186-1.2 1.718-.324.493-.6.943-.841 1.351l-.061.101a27.96 27.96 0 0 0-.622 1.119c-.325.621-.475.975-.475.975v11.692h82.53v-11.692s-.36-.842-1.158-2.195a35.417 35.417 0 0 0-.842-1.351z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(9)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span
                                    dir="auto"
                                    title="I’M Here to HelP:IT JoBs6"
                                    class="_35k-1 _1adfa _3-8er"
                                    >I’M Here to HelP:IT JoBs6</span
                                  >
                                </div>
                                <div class="_15smv">10:07 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span
                                    class="_1DB2K"
                                    title="‪Capgemini Careers Jobs for Freshers- Recruitment Drive
Accounts Fresher | 0-1 years | Kolkata

Experience level:
Entry level / Graduate

https://www.seekajob.in/capgemini-careers-jobs-for-freshers/
Job Description
•  Creation of payment batches for vendors and employees.
•  Month end activities (Closing, Dashboard etc.).
•  Posting Journals
•  Handling generic mail box.
Primary Skills
•  Invoice and expense/claim processing as per the guidelines.
•  Creation of new vendors/supplier in the system.
Secondary Skills
•  Maintaining hygiene for SOPs.
•  Following up with the vendors for the PO numbers.‬"
                                    ><span dir="auto" class="_1adfa _3-8er"
                                      >+91 89519 99357</span
                                    ><span>:&nbsp;</span
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Capgemini Careers Jobs for Freshers-
                                      Recruitment Drive Accounts Fresher | 0-1
                                      years | Kolkata Experience level: Entry
                                      level / Graduate
                                      https://www.seekajob.in/capgemini-careers-jobs-for-freshers/
                                      Job Description •&nbsp;&nbsp;Creation of
                                      payment batches for vendors and employees.
                                      •&nbsp;&nbsp;Month end activities
                                      (Closing, Dashboard etc.).
                                      •&nbsp;&nbsp;Posting Journals
                                      •&nbsp;&nbsp;Handling generic mail box.
                                      Primary Skills •&nbsp;&nbsp;Invoice and
                                      expense/claim processing as per the
                                      guidelines. •&nbsp;&nbsp;Creation of new
                                      vendors/supplier in the system. Secondary
                                      Skills •&nbsp;&nbsp;Maintaining hygiene
                                      for SOPs. •&nbsp;&nbsp;Following up with
                                      the vendors for the PO numbers.</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span
                                    ><div
                                      class="_2TiQe"
                                      aria-label="Muted chat"
                                    >
                                      <span
                                        data-testid="muted"
                                        data-icon="muted"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 18"
                                          width="16"
                                          height="18"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M11.52 9.206c0-1.4-.778-2.567-1.944-3.111v1.711L11.52 9.75v-.544zm1.945 0c0 .7-.156 1.4-.389 2.022l1.167 1.167c.544-.933.778-2.1.778-3.267 0-3.344-2.333-6.144-5.444-6.844v1.633c2.255.778 3.888 2.8 3.888 5.289zm-11.433-7L1.02 3.217l3.656 3.656H1.02v4.667h3.111l3.889 3.889v-5.211l3.344 3.344c-.544.389-1.089.7-1.789.933v1.633a6.64 6.64 0 0 0 2.878-1.4l1.556 1.556 1.011-1.011-7-7-5.988-6.067zm5.988.778L6.387 4.617 8.02 6.25V2.984z"
                                          ></path></svg
                                      ></span></div></span
                                  ><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="_2aBzC"
                        style="
                          z-index: 72;
                          transition: none 0s ease 0s;
                          height: 72px;
                          transform: translateY(792px);
                        "
                      >
                        <div tabindex="-1" aria-selected="false" role="row">
                          <div class="_2Z4DV">
                            <div class="_2GAT7">
                              <div
                                class="-y4n1"
                                style="height: 49px; width: 49px"
                              >
                                <div class="_27MZN">
                                  <span
                                    data-testid="default-user"
                                    data-icon="default-user"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 212 212"
                                      width="212"
                                      height="212"
                                    >
                                      <path
                                        fill="#DFE5E7"
                                        class="background"
                                        d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                                      ></path>
                                      <path
                                        fill="#FFF"
                                        class="primary"
                                        d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                                      ></path></svg
                                  ></span>
                                </div>
                                <img
                                  src="./WhatsApp_files/pp(10)"
                                  alt=""
                                  draggable="false"
                                  class="_18-9u _1bvi5 _3-8er"
                                  style="visibility: visible"
                                />
                              </div>
                            </div>
                            <div class="TbtXF">
                              <div
                                role="gridcell"
                                aria-colindex="2"
                                class="_2pkLM"
                              >
                                <div class="_3Dr46">
                                  <span class="N2dUK"
                                    ><span
                                      dir="auto"
                                      title="Ranjit Davange GECA"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Ranjit Davange GECA</span
                                    >
                                    <div class="IGI1I"></div
                                  ></span>
                                </div>
                                <div class="_15smv">10:18 am</div>
                              </div>
                              <div class="_1SjZ2">
                                <div class="_2vfYK">
                                  <span class="_1DB2K" title="‪Okay‬"
                                    ><span
                                      dir="ltr"
                                      class="_35k-1 _1adfa _3-8er"
                                      >Okay</span
                                    ></span
                                  >
                                </div>
                                <div
                                  role="gridcell"
                                  aria-colindex="1"
                                  class="_15smv"
                                >
                                  <span></span><span></span><span></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div hidden="" style="display: none"></div>
                <div class="_3q7pL"></div>
              </div>
            </div>
          </div>
          <div class="_1Flk2 _1sFTb">
            <div id="main" class="_3AUV4">
              <div
                class="IeYBo"
                data-asset-chat-background-light="true"
                style="opacity: 0.06"
              ></div>
              <header class="_1-qgF">
                <div class="fBf_N" role="button">
                  <div class="-y4n1" style="height: 40px; width: 40px">
                    <div class="_27MZN">
                      <span
                        data-testid="default-user"
                        data-icon="default-user"
                        class=""
                        ><svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 212 212"
                          width="212"
                          height="212"
                        >
                          <path
                            fill="#DFE5E7"
                            class="background"
                            d="M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"
                          ></path>
                          <path
                            fill="#FFF"
                            class="primary"
                            d="M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"
                          ></path></svg
                      ></span>
                    </div>
                  </div>
                </div>
                <div class="_2uaUb" role="button">
                  <div class="z4t2k">
                    <div class="_2KQyF">
                      <span
                        dir="auto"
                        title="Pushkar Joshi GECA"
                        class="_35k-1 _1adfa _3-8er"
                        >Pushkar Joshi GECA</span
                      >
                    </div>
                  </div>
                </div>
                <div class="_1IeOz">
                  <div class="_1ljzS pnYZD">
                    <div class="_2n-zq">
                      <div
                        aria-disabled="false"
                        role="button"
                        tabindex="0"
                        data-tab="8"
                        title="Search…"
                        aria-label="Search…"
                      >
                        <span
                          data-testid="search-alt"
                          data-icon="search-alt"
                          class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M15.9 14.3H15l-.3-.3c1-1.1 1.6-2.7 1.6-4.3 0-3.7-3-6.7-6.7-6.7S3 6 3 9.7s3 6.7 6.7 6.7c1.6 0 3.2-.6 4.3-1.6l.3.3v.8l5.1 5.1 1.5-1.5-5-5.2zm-6.2 0c-2.6 0-4.6-2.1-4.6-4.6s2.1-4.6 4.6-4.6 4.6 2.1 4.6 4.6-2 4.6-4.6 4.6z"
                            ></path></svg
                        ></span>
                      </div>
                      <span></span>
                    </div>
                    <div class="_2n-zq">
                      <div
                        aria-disabled="false"
                        role="button"
                        tabindex="0"
                        data-tab="8"
                        title="Menu"
                        aria-label="Menu"
                      >
                        <span data-testid="menu" data-icon="menu" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M12 7a2 2 0 1 0-.001-4.001A2 2 0 0 0 12 7zm0 2a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 9zm0 6a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 15z"
                            ></path></svg
                        ></span>
                      </div>
                      <span></span>
                    </div>
                  </div>
                </div>
              </header>
              <span class="_1C6f8"></span>
              <div class="_1C6f8"><span></span></div>
              <div class="_2wjK5">
                <div class="_3wXwX copyable-area">
                  <span></span><span></span>
                  <div class="_1gL0z" tabindex="0">
                    <div class="_2VvGi"></div>
                    <div class="_2hDby">
                      <div class="_3M4BR" title="load earlier messages…">
                        <span data-testid="refresh" data-icon="refresh" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M17.6 6.4C16.2 4.9 14.2 4 12 4c-4.4 0-8 3.6-8 8s3.6 8 8 8c3.7 0 6.8-2.6 7.7-6h-2.1c-.8 2.3-3 4-5.6 4-3.3 0-6-2.7-6-6s2.7-6 6-6c1.7 0 3.1.7 4.2 1.8L13 11h7V4l-2.4 2.4z"
                            ></path></svg
                        ></span>
                      </div>
                    </div>
                    <div
                      tabindex="-1"
                      class="_11liR"
                      data-tab="7"
                      role="region"
                      aria-label="Message list. Press right arrow key on a message to open message context menu."
                    >
                      <div
                        class="GDTQm _397qe focusable-list-item"
                        tabindex="-1"
                      >
                        <div class="_24wtQ _2kR4B _15gfz"></div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3EB0ABBD67F9724AEB01"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:01 pm, 27/04/2021] Pradip Bankar: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-1 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-1"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="_1Lc2C _3-8er"
                                              >Pushkar Joshi GECA</span
                                            >
                                          </div>
                                          <div
                                            class="_31DtU"
                                            dir="ltr"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >Z is zed</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>this is wrong</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">5:01 pm</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_B8FA0C166C591032E2ED24E80A2B5200"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:10 pm, 27/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Attendance</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">5:10 pm</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3EB03CE037011FB1271A"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:10 pm, 27/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>private madhe dilii re</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">5:10 pm</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_E7395F60B83E5FDFA3F35AB325922D57"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:11 pm, 27/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Ohh</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">5:11 pm</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_4C4417C3E958BF40EA8255F53A1682DD"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:11 pm, 27/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>I thought visarla</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">5:11 pm</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3EB01709F7B23308E31A"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:11 pm, 27/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>laptop bro]</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">5:11 pm</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_D2FBFB0B846FF802BE43D9C428B409D5"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[5:50 pm, 27/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Hmm</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">5:50 pm</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_EBC6258DE6060EA5467F59B3D4A480F8"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[9:57 pm, 27/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>kya bolta bhidu</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">9:57 pm</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        class="GDTQm _397qe focusable-list-item"
                        tabindex="-1"
                      >
                        <div class="_24wtQ _2kR4B">
                          <span dir="auto" class="_3-8er">TODAY</span>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_F31CA898050DBAC33A980DF305262C77"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[8:24 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Oomd la gela ka re</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">8:24 am</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_9F068C41293BF91079C85961F19C7AFD"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[8:45 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>ahe ka chalu</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">8:45 am</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_D9A92E6568BC46DD2464ACFA0FD8E6B0"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[8:46 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Ha ye</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">8:46 am</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_E1358C2B16CDE5E657E05634CE8E47A4"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[8:54 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span
                                      >Azure wale credit card magtay</span
                                    ></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">8:54 am</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_F9AFBF74AACA9DC97748A00B0DBC0744"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[9:04 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>smita mam ch ghe mg</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">9:04 am</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_A272832DA2CF5098D574A4AB40722279"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[9:13 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <div
                                    class="_9leQM _3-8er selectable-text copyable-text"
                                  >
                                    <span class="gejrB"
                                      ><img
                                        crossorigin="anonymous"
                                        src="./WhatsApp_files/99abb3d4056fa7f1eea545403cd324c8_w_958-64.png"
                                        alt="👍"
                                        draggable="false"
                                        class="fYhHq _3QdNb _3-8er selectable-text copyable-text"
                                        data-plain-text="👍"
                                        style="visibility: visible"
                                    /></span>
                                  </div>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">9:13 am</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_F60A487C45366DB72114AD5A2E559A43"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[9:14 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span
                                      >Jr 100 rs gele tyanche tr vyjasahit 1000
                                      rs jhale mhntil tya</span
                                    ></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">9:14 am</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_9C0B91D1C090B02C99094E639CF04C9C"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[9:20 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-1 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-1"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="_1Lc2C _3-8er"
                                              >Pushkar Joshi GECA</span
                                            >
                                          </div>
                                          <div
                                            class="_31DtU"
                                            dir="ltr"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >Jr 100 rs gele tyanche tr
                                              vyjasahit 1000 rs jhale mhntil
                                              tya</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <div
                                    class="_9leQM _3-8er selectable-text copyable-text"
                                  >
                                    <span class="gejrB"
                                      ><img
                                        crossorigin="anonymous"
                                        src="./WhatsApp_files/99abb3d4056fa7f1eea545403cd324c8_w_1885-40.png"
                                        alt="😂"
                                        draggable="false"
                                        class="fYhHq _1aKag _3-8er selectable-text copyable-text"
                                        data-plain-text="😂"
                                        style="visibility: visible" /></span
                                    ><span class="gejrB"
                                      ><img
                                        crossorigin="anonymous"
                                        src="./WhatsApp_files/99abb3d4056fa7f1eea545403cd324c8_w_1885-40.png"
                                        alt="😂"
                                        draggable="false"
                                        class="fYhHq _1aKag _3-8er selectable-text copyable-text"
                                        data-plain-text="😂"
                                        style="visibility: visible"
                                    /></span>
                                  </div>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">9:20 am</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_16CB0501A48FBF6A20F61334FCF07A99"
                      >
                        <span></span>
                        <div class="_24wtQ _117Hx _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div>
                              <div class="_16D7a kd7WL _1aHvR _1RiM-">
                                <div class="_2xq9W _22kJC">
                                  <span
                                    data-testid="forwarded"
                                    data-icon="forwarded"
                                    class="Sqh9W _2nw-x"
                                    ><svg
                                      width="16"
                                      height="16"
                                      viewBox="0 0 16 16"
                                      xmlns="http://www.w3.org/2000/svg"
                                    >
                                      <path
                                        d="M9.519 3.875a.54.54 0 0 1 .922-.382l4.03 4.034a.54.54 0 0 1 0 .764l-4.03 4.034a.54.54 0 0 1-.922-.383v-1.821c-3.398 0-5.886.97-7.736 3.074-.164.186-.468.028-.402-.211.954-3.449 3.284-6.67 8.138-7.363V3.875z"
                                        fill="currentColor"
                                      ></path></svg></span
                                  ><span class="_3SReC">Forwarded</span>
                                </div>
                                <div
                                  class="hS6U_ _2W4vP"
                                  style="width: 240px; height: 338px"
                                >
                                  <div class="GqrIo">
                                    <div class="_3oZ_A _1C2_w">
                                      <span
                                        data-testid="video-pip"
                                        data-icon="video-pip"
                                        class=""
                                        ><svg
                                          width="24"
                                          height="24"
                                          viewBox="0 0 24 24"
                                          xmlns="http://www.w3.org/2000/svg"
                                        >
                                          <defs>
                                            <filter
                                              x="-39.5%"
                                              y="-46.4%"
                                              width="173.7%"
                                              height="200%"
                                              filterUnits="objectBoundingBox"
                                              id="video-pip-filter-1"
                                            >
                                              <feoffset
                                                dy="1"
                                                in="SourceAlpha"
                                                result="shadowOffsetOuter1"
                                              ></feoffset>
                                              <fegaussianblur
                                                stdDeviation="1"
                                                in="shadowOffsetOuter1"
                                                result="shadowBlurOuter1"
                                              ></fegaussianblur>
                                              <fecolormatrix
                                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.3 0"
                                                in="shadowBlurOuter1"
                                                result="shadowMatrixOuter1"
                                              ></fecolormatrix>
                                              <femerge>
                                                <femergenode
                                                  in="shadowMatrixOuter1"
                                                ></femergenode>
                                                <femergenode
                                                  in="SourceGraphic"
                                                ></femergenode>
                                              </femerge>
                                            </filter>
                                          </defs>
                                          <g
                                            filter="url(#video-pip-filter-1)"
                                            transform="translate(3 4)"
                                            fill="#FFF"
                                            fill-rule="evenodd"
                                          >
                                            <path
                                              d="M11.35 6h6a1.2 1.2 0 0 0 1.2-1.2V1.2a1.2 1.2 0 0 0-1.2-1.2h-6a1.2 1.2 0 0 0-1.2 1.2v3.6a1.2 1.2 0 0 0 1.2 1.2"
                                            ></path>
                                            <path
                                              d="M8.65 1.875v1.5H1.2a.45.45 0 0 0-.45.45v8.6c0 .248.202.45.45.45h13.4a.45.45 0 0 0 .45-.45v-5.25h1.5v5.25a1.95 1.95 0 0 1-1.95 1.95H1.2a1.95 1.95 0 0 1-1.95-1.95v-8.6a1.95 1.95 0 0 1 1.95-1.95h7.45z"
                                              fill-rule="nonzero"
                                            ></path>
                                          </g></svg
                                      ></span>
                                    </div>
                                  </div>
                                  <div class="_1DzQ6">
                                    <div class="_1yOQ-">
                                      <span
                                        data-testid="media-play"
                                        data-icon="media-play"
                                        class="_3MSVi"
                                        ><svg
                                          width="24"
                                          height="24"
                                          viewBox="0 0 24 24"
                                          xmlns="http://www.w3.org/2000/svg"
                                        >
                                          <path
                                            d="M19.5 10.9l-13-7.5c-1.3-.7-2.4-.1-2.4 1.4v15c0 1.5 1.1 2.1 2.4 1.4l13-7.5c1.3-.9 1.3-2.1 0-2.8z"
                                            fill="currentColor"
                                          ></path></svg
                                      ></span>
                                    </div>
                                  </div>
                                  <div
                                    class="_17Nt7 _53w2c"
                                    style="
                                      background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgALQMBIgACEQEDEQH/xAAtAAEBAQEBAQAAAAAAAAAAAAAAAQUCBAMBAQEBAAAAAAAAAAAAAAAAAAABA//aAAwDAQACEAMQAAAA9ba8+9zWj9jIbYhcIABAEoAShz0Vz0AAAf/EACQQAAIBAwIGAwAAAAAAAAAAAAABERIVYwIDEBMgIjBSQlFh/9oACAEBAAE/ALRlLRlLRlLRlLRlLRl4J7vqxc2GnJtvVT3LzyiUSvsqRUuhrhHgj9KGvkPTCmWUP2HoiO5iUdf/xAAYEQADAQEAAAAAAAAAAAAAAAADFFIAMP/aAAgBAgEBPwBk1Zk1Zk1df//EABcRAAMBAAAAAAAAAAAAAAAAAAABETD/2gAIAQMBAT8ArKyvX//Z');
                                      width: 100%;
                                    "
                                  ></div>
                                  <div class="_2iL1d"></div>
                                  <span class="_2yOzJ"
                                    ><div class="_1vPFm">
                                      <span
                                        data-testid="msg-video"
                                        data-icon="msg-video"
                                        class=""
                                        ><svg
                                          xmlns="http://www.w3.org/2000/svg"
                                          viewBox="0 0 16 14"
                                          width="16"
                                          height="14"
                                        >
                                          <path
                                            fill="currentColor"
                                            d="M14.987 2.668l-3.48 3.091v-2.27c0-.657-.532-1.189-1.189-1.189H1.689C1.032 2.3.5 2.832.5 3.489v7.138c0 .657.532 1.189 1.189 1.189h8.629c.657 0 1.189-.532 1.189-1.189V8.328l3.48 3.09v-8.75z"
                                          ></path></svg
                                      ></span>
                                    </div>
                                    8:51</span
                                  >
                                </div>
                                <div class="_1tn-N">
                                  <div class="UFTvj nszPL">
                                    <span class="_17Osw" dir="auto"
                                      >10:38 am</span
                                    >
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_15655638C3515A93F81703652E4D0ADD"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[10:50 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-1 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-1"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="_1Lc2C _3-8er"
                                              >Pushkar Joshi GECA</span
                                            >
                                          </div>
                                          <div class="_31DtU" role="button">
                                            <div
                                              class="DcZKr status-video _2L4Uz"
                                            >
                                              <span
                                                data-testid="status-video"
                                                data-icon="status-video"
                                                class=""
                                                ><svg
                                                  xmlns="http://www.w3.org/2000/svg"
                                                  viewBox="0 0 16 20"
                                                  width="16"
                                                  height="20"
                                                >
                                                  <path
                                                    fill="currentColor"
                                                    d="M15.243 5.868l-3.48 3.091v-2.27c0-.657-.532-1.189-1.189-1.189H1.945c-.657 0-1.189.532-1.189 1.189v7.138c0 .657.532 1.189 1.189 1.189h8.629c.657 0 1.189-.532 1.189-1.189v-2.299l3.48 3.09v-8.75z"
                                                  ></path></svg
                                              ></span>
                                            </div>
                                            8:51
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >Video</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                      <div class="r-S76">
                                        <div class="_16BuV">
                                          <div
                                            class="_3e0Yi"
                                            style="
                                              background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgALQMBIgACEQEDEQH/xAAtAAEBAQEBAQAAAAAAAAAAAAAAAQUCBAMBAQEBAAAAAAAAAAAAAAAAAAABA//aAAwDAQACEAMQAAAA9ba8+9zWj9jIbYhcIABAEoAShz0Vz0AAAf/EACQQAAIBAwIGAwAAAAAAAAAAAAABERIVYwIDEBMgIjBSQlFh/9oACAEBAAE/ALRlLRlLRlLRlLRlLRl4J7vqxc2GnJtvVT3LzyiUSvsqRUuhrhHgj9KGvkPTCmWUP2HoiO5iUdf/xAAYEQADAQEAAAAAAAAAAAAAAAADFFIAMP/aAAgBAgEBPwBk1Zk1Zk1df//EABcRAAMBAAAAAAAAAAAAAAAAAAABETD/2gAIAQMBAT8ArKyvX//Z');
                                            "
                                          ></div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>vishal bro</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >10:50 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3D93A7AC5CDAAB22C98CB7565BD3D103"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:35 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-2 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-2"
                                            role="button"
                                          >
                                            <span dir="auto" class="_3-8er"
                                              >You</span
                                            >
                                          </div>
                                          <div
                                            class="_31DtU"
                                            dir="ltr"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >vishal bro</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <span
                                    dir="auto"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>?</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:35 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_600E55DA5C637CB2D95E5EAD10A888CF"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:35 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>this was question</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:35 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_59653878F1D71B0EA03C30DA3FEC1915"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:35 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Ya</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:35 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_A32B1369C7FE3F4AAD5F8872F631EB0B"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:35 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>It is krishna</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:35 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_E82A2566DBD085425C661F529296BBBB"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:36 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-1 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-1"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="_1Lc2C _3-8er"
                                              >Pushkar Joshi GECA</span
                                            >
                                          </div>
                                          <div
                                            class="_31DtU"
                                            dir="ltr"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >It is krishna</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>oh</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:36 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_DBFB36478792C9F1C1BDB9088AE97D7B"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:36 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>tarakki hai</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:36 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_65A4CB2536B0F20C50945EC4CFE302F5"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:36 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Phir apna ui ka kya hus</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:36 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_BFDFA8DE2A15744C4ABF06A8906D13C2"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:36 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span
                                      >Jaldi kar bhai ui hai toh sab hai nhi toh
                                      mamu lagega apna app</span
                                    ></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:36 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_AB45045FB95965658B56568162A32CE4"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:36 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>aaj dcn ke bad</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:36 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_0E229DEBA5889E66D4A861774E169727"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:37 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>kab hai dcn</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:37 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_A819711DEAB9C9F737A59AA7A6B7AD5C"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:38 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Kya pata</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:38 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_827B5A2050E4D4A21F4510DAFE2B83B0"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:38 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Calendar mein nhi dukhra</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:38 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_8FDB7DC490BB9E427117430D88C18117"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:38 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>ha na</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:38 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3B89CAD245C319BDFB87ED9FF6B6F65B"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:38 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>meet le lete phir</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:38 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_12A66A0B245A25EFC7A695A948DF55F7"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:38 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>pehle hi</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:38 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_4A9D9329CBC0099C7EDEEF2D6A9264B3"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Ha abhi lete</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_497B67DA6E446B27DFB3193650316AE1"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Kya bolta</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_1F2955204E64ABF3B2760F505CC4D88E"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>lete na</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_B3ACD7790EB30FC7603A198521E6280D"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>aaja phir</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-out focusable-list-item"
                        data-id="true_919421339344@c.us_ADF50922078962E5618DB67CF7C0C6AE"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>link de</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_E23F2694AD8E1C09A91F5396E5BEFB16"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:39 am, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>main lapy kholta</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto"
                                    >11:39 am</span
                                  >
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_03112B0912F450C8695BB4ACB3A7C338"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:40 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3lWN8">
                                  <div class="_2w_1z">
                                    <div class="_3Ppzm" role="button">
                                      <span class="bg-color-2 _3eu_9"></span>
                                      <div class="_2mGGI">
                                        <div class="_3Xmdf">
                                          <div
                                            class="_26iqs color-2"
                                            role="button"
                                          >
                                            <span dir="auto" class="_3-8er"
                                              >You</span
                                            >
                                          </div>
                                          <div
                                            class="_31DtU"
                                            dir="ltr"
                                            role="button"
                                          >
                                            <span
                                              dir="auto"
                                              class="quoted-mention _3-8er"
                                              >link de</span
                                            >
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Apni</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:40 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_5354D20B98250705835CFEFAC3F4CA67"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:40 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Purani</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:40 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_593D46A36F746A3FBB8F9DA9DC953F58"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[11:44 am, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span
                                      >Tu such lapi kholra lagta</span
                                    ></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto"
                                    >11:44 am</span
                                  >
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-out focusable-list-item"
                        data-id="true_919421339344@c.us_3EB0777F21E1F56162EB"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-out"
                            data-icon="tail-out"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                d="M5.188 1H0v11.193l6.467-8.625C7.526 2.156 6.958 1 5.188 1z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M5.188 0H0v11.193l6.467-8.625C7.526 1.156 6.958 0 5.188 0z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="You:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[2:03 pm, 28/04/2021] Pradip Bankar: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>pecl la chal na</span></span
                                  ><span class="_1Bd9o _2ScdV"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj" role="button">
                                  <span class="_17Osw" dir="auto">2:03 pm</span>
                                  <div class="_2nWgr">
                                    <span
                                      data-testid="msg-dblcheck"
                                      aria-label=" Read "
                                      data-icon="msg-dblcheck"
                                      class="_1RD_6"
                                      ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 16 15"
                                        width="16"
                                        height="15"
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.879a.32.32 0 0 1-.484.033l-.358-.325a.319.319 0 0 0-.484.032l-.378.483a.418.418 0 0 0 .036.541l1.32 1.266c.143.14.361.125.484-.033l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.879a.32.32 0 0 1-.484.033L1.891 7.769a.366.366 0 0 0-.515.006l-.423.433a.364.364 0 0 0 .006.514l3.258 3.185c.143.14.361.125.484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                        ></path></svg
                                    ></span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="0"
                        class="GDTQm _2iwLX message-in focusable-list-item"
                        data-id="false_919421339344@c.us_D7EA6BD24D19A7D7E9974DBD44541716"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I- _1-U5A">
                          <span
                            data-testid="tail-in"
                            data-icon="tail-in"
                            class="_1bUzr"
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 8 13"
                              width="8"
                              height="13"
                            >
                              <path
                                opacity=".13"
                                fill="#0000000"
                                d="M1.533 3.568L8 12.193V1H2.812C1.042 1 .474 2.156 1.533 3.568z"
                              ></path>
                              <path
                                fill="currentColor"
                                d="M1.533 2.568L8 11.193V0H2.812C1.042 0 .474 1.156 1.533 2.568z"
                              ></path></svg
                          ></span>
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[2:08 pm, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <span
                                    dir="ltr"
                                    class="_3-8er selectable-text copyable-text"
                                    ><span>Ha ha alo</span></span
                                  ><span class="_1Bd9o"></span>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">2:08 pm</span>
                                </div>
                              </div>
                            </div>
                            <span
                              ><div class="_3dGJA _3qSKL" style="opacity: 1">
                                <div
                                  data-js-context-icon="true"
                                  class="QhSbI"
                                  style="transform: translateX(0%)"
                                >
                                  <span
                                    data-testid="down-context"
                                    data-icon="down-context"
                                    class=""
                                    ><svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      viewBox="0 0 18 18"
                                      width="18"
                                      height="18"
                                    >
                                      <path
                                        fill="currentColor"
                                        d="M3.3 4.6L9 10.3l5.7-5.7 1.6 1.6L9 13.4 1.7 6.2l1.6-1.6z"
                                      ></path></svg
                                  ></span>
                                </div></div
                            ></span>
                          </div>
                        </div>
                      </div>
                      <div
                        tabindex="-1"
                        class="GDTQm message-in focusable-list-item"
                        data-id="false_919421339344@c.us_0039EFC5D22729D6E9B295A575A5FA40"
                      >
                        <span></span>
                        <div class="_24wtQ _2W7I-">
                          <div class="_3XpKm _20zqk">
                            <span aria-label="Pushkar Joshi GECA:"></span>
                            <div class="_1bR5a">
                              <div
                                class="copyable-text"
                                data-pre-plain-text="[2:08 pm, 28/04/2021] Pushkar Joshi GECA: "
                              >
                                <div class="_3ExzF">
                                  <div
                                    class="_9leQM _3-8er selectable-text copyable-text"
                                  >
                                    <span class="gejrB"
                                      ><img
                                        crossorigin="anonymous"
                                        src="./WhatsApp_files/99abb3d4056fa7f1eea545403cd324c8_w_1888-64.png"
                                        alt="😅"
                                        draggable="false"
                                        class="fYhHq _3QdNb _3-8er selectable-text copyable-text"
                                        data-plain-text="😅"
                                        style="visibility: visible"
                                    /></span>
                                  </div>
                                </div>
                              </div>
                              <div class="_2zWo9">
                                <div class="UFTvj">
                                  <span class="_17Osw" dir="auto">2:08 pm</span>
                                </div>
                              </div>
                            </div>
                            <span></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div hidden="" style="display: none"></div>
                  </div>
                </div>
              </div>
              <div class="_2sw49" style="height: 0px"></div>
              <footer tabindex="-1" class="_3uxr9">
                <div class="vR1LG _3wXwX copyable-area">
                  <div class="EBaI7 _23e-h">
                    <div data-state="closed" class="_291Eb _2MeuX">
                      <button
                        tabindex="-1"
                        class="_3k0dC _2zMTD _3js56 rjHB8"
                        aria-label="Close panel"
                      >
                        <span data-testid="x" data-icon="x" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M19.1 17.2l-5.3-5.3 5.3-5.3-1.8-1.8-5.3 5.4-5.3-5.3-1.8 1.7 5.3 5.3-5.3 5.3L6.7 19l5.3-5.3 5.3 5.3 1.8-1.8z"
                            ></path></svg
                        ></span></button
                      ><button
                        tabindex="-1"
                        class="_3k0dC _2zMTD _2NHIO _15ScS VRn4o"
                        aria-label="Open emojis panel"
                        data-tab="5"
                      >
                        <span data-testid="smiley" data-icon="smiley" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M9.153 11.603c.795 0 1.439-.879 1.439-1.962s-.644-1.962-1.439-1.962-1.439.879-1.439 1.962.644 1.962 1.439 1.962zm-3.204 1.362c-.026-.307-.131 5.218 6.063 5.551 6.066-.25 6.066-5.551 6.066-5.551-6.078 1.416-12.129 0-12.129 0zm11.363 1.108s-.669 1.959-5.051 1.959c-3.505 0-5.388-1.164-5.607-1.959 0 0 5.912 1.055 10.658 0zM11.804 1.011C5.609 1.011.978 6.033.978 12.228s4.826 10.761 11.021 10.761S23.02 18.423 23.02 12.228c.001-6.195-5.021-11.217-11.216-11.217zM12 21.354c-5.273 0-9.381-3.886-9.381-9.159s3.942-9.548 9.215-9.548 9.548 4.275 9.548 9.548c-.001 5.272-4.109 9.159-9.382 9.159zm3.108-9.751c.795 0 1.439-.879 1.439-1.962s-.644-1.962-1.439-1.962-1.439.879-1.439 1.962.644 1.962 1.439 1.962z"
                            ></path></svg
                        ></span></button
                      ><button
                        tabindex="-1"
                        class="_3k0dC _2zMTD igz8o VRn4o"
                        aria-label="Open gif panel"
                      >
                        <span data-testid="gif" data-icon="gif" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M13.177 12.013l-.001-.125v-.541-.512c0-.464 0-.827-.002-1.178a.723.723 0 0 0-.557-.7.715.715 0 0 0-.826.4c-.05.115-.072.253-.073.403-.003 1.065-.003 1.917-.002 3.834v.653c0 .074.003.136.009.195a.72.72 0 0 0 .57.619c.477.091.878-.242.881-.734.002-.454.003-.817.002-1.633l-.001-.681zm-3.21-.536a35.751 35.751 0 0 0-1.651-.003c-.263.005-.498.215-.565.48a.622.622 0 0 0 .276.7.833.833 0 0 0 .372.104c.179.007.32.008.649.005l.137-.001v.102c-.001.28-.001.396.003.546.001.044-.006.055-.047.081-.242.15-.518.235-.857.275-.767.091-1.466-.311-1.745-1.006a2.083 2.083 0 0 1-.117-1.08 1.64 1.64 0 0 1 1.847-1.41c.319.044.616.169.917.376.196.135.401.184.615.131a.692.692 0 0 0 .541-.562c.063-.315-.057-.579-.331-.766-.789-.542-1.701-.694-2.684-.482-2.009.433-2.978 2.537-2.173 4.378.483 1.105 1.389 1.685 2.658 1.771.803.054 1.561-.143 2.279-.579.318-.193.498-.461.508-.803.014-.52.015-1.046.001-1.578-.009-.362-.29-.669-.633-.679zM18 4.25H6A4.75 4.75 0 0 0 1.25 9v6A4.75 4.75 0 0 0 6 19.75h12A4.75 4.75 0 0 0 22.75 15V9A4.75 4.75 0 0 0 18 4.25zM21.25 15A3.25 3.25 0 0 1 18 18.25H6A3.25 3.25 0 0 1 2.75 15V9A3.25 3.25 0 0 1 6 5.75h12A3.25 3.25 0 0 1 21.25 9v6zm-2.869-6.018H15.3c-.544 0-.837.294-.837.839V14.309c0 .293.124.525.368.669.496.292 1.076-.059 1.086-.651.005-.285.006-.532.004-1.013v-.045l-.001-.46v-.052h1.096l1.053-.001a.667.667 0 0 0 .655-.478c.09-.298-.012-.607-.271-.757a.985.985 0 0 0-.468-.122 82.064 82.064 0 0 0-1.436-.006h-.05l-.523.001h-.047v-1.051h1.267l1.22-.001c.458-.001.768-.353.702-.799-.053-.338-.35-.56-.737-.561z"
                            ></path></svg
                        ></span></button
                      ><button
                        tabindex="-1"
                        class="_3k0dC _2zMTD kwzXH VRn4o"
                        aria-label="Open sticker panel"
                      >
                        <span data-testid="sticker" data-icon="sticker" class=""
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            width="24"
                            height="24"
                          >
                            <path
                              fill="currentColor"
                              d="M21.799 10.183c-.002-.184-.003-.373-.008-.548-.02-.768-.065-1.348-.173-1.939a6.6 6.6 0 0 0-.624-1.87 6.24 6.24 0 0 0-1.171-1.594 6.301 6.301 0 0 0-1.614-1.159 6.722 6.722 0 0 0-1.887-.615c-.59-.106-1.174-.15-1.961-.171-.318-.008-3.607-.012-4.631 0-.798.02-1.383.064-1.975.17a6.783 6.783 0 0 0-1.888.616 6.326 6.326 0 0 0-2.785 2.753 6.658 6.658 0 0 0-.623 1.868c-.107.591-.152 1.186-.173 1.941-.008.277-.016 2.882-.016 2.882 0 .52.008 1.647.016 1.925.02.755.066 1.349.172 1.938.126.687.33 1.3.624 1.871.303.59.698 1.126 1.173 1.595a6.318 6.318 0 0 0 1.614 1.159 6.786 6.786 0 0 0 2.146.656c.479.068.833.087 1.633.108.035.001 2.118-.024 2.578-.035a6.873 6.873 0 0 0 4.487-1.811 210.877 210.877 0 0 0 2.928-2.737 6.857 6.857 0 0 0 2.097-4.528l.066-1.052.001-.668c.001-.023-.005-.738-.006-.755zm-3.195 5.92c-.79.757-1.784 1.684-2.906 2.716a5.356 5.356 0 0 1-2.044 1.154c.051-.143.116-.276.145-.433.042-.234.06-.461.067-.74.003-.105.009-.789.009-.789.013-.483.042-.865.107-1.22.069-.379.179-.709.336-1.016.16-.311.369-.595.621-.844.254-.252.542-.458.859-.617.314-.158.65-.268 1.037-.337a8.127 8.127 0 0 1 1.253-.106s.383.001.701-.003a4.91 4.91 0 0 0 .755-.066c.186-.034.348-.105.515-.169a5.35 5.35 0 0 1-1.455 2.47zm1.663-4.757a1.128 1.128 0 0 1-.615.859 1.304 1.304 0 0 1-.371.119 3.502 3.502 0 0 1-.52.043c-.309.004-.687.004-.687.004-.613.016-1.053.049-1.502.129a5.21 5.21 0 0 0-1.447.473 4.86 4.86 0 0 0-2.141 2.115 5.088 5.088 0 0 0-.479 1.434 9.376 9.376 0 0 0-.131 1.461s-.006.684-.008.777c-.006.208-.018.37-.043.511a1.154 1.154 0 0 1-.626.86c-.072.036-.168.063-.37.098-.027.005-.25.027-.448.031-.021 0-1.157.01-1.192.009-.742-.019-1.263-.046-1.668-.126a5.27 5.27 0 0 1-1.477-.479 4.823 4.823 0 0 1-2.127-2.1 5.141 5.141 0 0 1-.482-1.453c-.09-.495-.13-1.025-.149-1.71a36.545 36.545 0 0 1-.012-.847c-.003-.292.005-3.614.012-3.879.02-.685.061-1.214.151-1.712a5.12 5.12 0 0 1 .481-1.45c.231-.449.53-.856.892-1.213.363-.36.777-.657 1.233-.886a5.26 5.26 0 0 1 1.477-.479c.503-.09 1.022-.129 1.74-.149a342.03 342.03 0 0 1 4.561 0c.717.019 1.236.058 1.737.148a5.263 5.263 0 0 1 1.476.478 4.835 4.835 0 0 1 2.126 2.098c.228.441.385.913.482 1.453.091.499.131 1.013.15 1.712.008.271.014 1.098.014 1.235a2.935 2.935 0 0 1-.037.436z"
                            ></path></svg
                        ></span>
                      </button>
                    </div>
                    <div class="_2C9f1">
                      <div class="_2n-zq">
                        <div
                          aria-disabled="false"
                          role="button"
                          tabindex="0"
                          title="Attach"
                          aria-label="Attach"
                        >
                          <span data-testid="clip" data-icon="clip" class=""
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              width="24"
                              height="24"
                            >
                              <path
                                fill="currentColor"
                                d="M1.816 15.556v.002c0 1.502.584 2.912 1.646 3.972s2.472 1.647 3.974 1.647a5.58 5.58 0 0 0 3.972-1.645l9.547-9.548c.769-.768 1.147-1.767 1.058-2.817-.079-.968-.548-1.927-1.319-2.698-1.594-1.592-4.068-1.711-5.517-.262l-7.916 7.915c-.881.881-.792 2.25.214 3.261.959.958 2.423 1.053 3.263.215l5.511-5.512c.28-.28.267-.722.053-.936l-.244-.244c-.191-.191-.567-.349-.957.04l-5.506 5.506c-.18.18-.635.127-.976-.214-.098-.097-.576-.613-.213-.973l7.915-7.917c.818-.817 2.267-.699 3.23.262.5.501.802 1.1.849 1.685.051.573-.156 1.111-.589 1.543l-9.547 9.549a3.97 3.97 0 0 1-2.829 1.171 3.975 3.975 0 0 1-2.83-1.173 3.973 3.973 0 0 1-1.172-2.828c0-1.071.415-2.076 1.172-2.83l7.209-7.211c.157-.157.264-.579.028-.814L11.5 4.36a.572.572 0 0 0-.834.018l-7.205 7.207a5.577 5.577 0 0 0-1.645 3.971z"
                              ></path></svg
                          ></span>
                        </div>
                        <span></span>
                      </div>
                    </div>
                  </div>
                  <div tabindex="-1" class="_2A8P4">
                    <div tabindex="-1" class="_1JAUF _2x4bz">
                      <div class="OTBsx" style="visibility: visible">
                        Type a message
                      </div>
                      <div
                        class="_2_1wd copyable-text selectable-text"
                        contenteditable="true"
                        data-tab="6"
                        dir="ltr"
                        spellcheck="true"
                      ></div>
                    </div>
                  </div>
                  <div class="EBaI7">
                    <div class="_2qMTj">
                      <span
                        ><button class="dNn0f">
                          <span data-testid="ptt" data-icon="ptt" class=""
                            ><svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              width="24"
                              height="24"
                            >
                              <path
                                fill="currentColor"
                                d="M11.999 14.942c2.001 0 3.531-1.53 3.531-3.531V4.35c0-2.001-1.53-3.531-3.531-3.531S8.469 2.35 8.469 4.35v7.061c0 2.001 1.53 3.531 3.53 3.531zm6.238-3.53c0 3.531-2.942 6.002-6.237 6.002s-6.237-2.471-6.237-6.002H3.761c0 4.001 3.178 7.297 7.061 7.885v3.884h2.354v-3.884c3.884-.588 7.061-3.884 7.061-7.885h-2z"
                              ></path></svg
                          ></span></button
                      ></span>
                    </div>
                  </div>
                </div>
                <div class="_1gNA1">
                  <div class="-fxbk">
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                    <div class="_1C2Q3"><div class="_3q7pL"></div></div>
                  </div>
                </div>
                <div class="_1xPrU"></div>
                <div class="_1p9lF"></div>
              </footer>
              <div hidden="" style="display: none"></div>
              <span></span>
            </div>
            <div hidden="" style="display: none"></div>
          </div>
        </div>
        <div hidden="" style="display: none"></div>
      </div>
      <div hidden="" style="display: none"></div>
    </div>
  </body>
</html>
