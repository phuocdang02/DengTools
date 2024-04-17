// Copyright 2018-present Network Optix, Inc. Licensed under MPL 2.0: www.mozilla.org/MPL/2.0/
import { SceneItemsController, LayoutSettingsController, AuthController, TabsController } from "./controllers";
import { initResourcesUI, initSceneItemsUI, initTabsUi } from "./initHandlers";
import { screenshot } from "./screenshot";

// Show help text when "Allow using Client API" hasn't been enabled
setTimeout(() => {
  if (!window.vms?.tab) {
    document.getElementsByTagName(
      "body"
    )[0].innerHTML = `<h1>Enable "Allow using Client API" under advanced web page settings to use test page</h1><img src="${screenshot}">`;
  }
}, 2500);

// Entry point for the Client API. After this callback call all functionality is available.
window.vmsApiInit = () => {
  window.sceneItemsController = new SceneItemsController();
  window.layoutSettingsController = new LayoutSettingsController();
  window.tabsController = new TabsController();

  // vms.auth is available in the 5.1 version.
  if (window.vms.auth)
    window.authController = new AuthController();
  else
    window.authBlock.style.visibility = "hidden"

  initResourcesUI(window.resourcesList);
  initSceneItemsUI(window.sceneItemsList);
  initTabsUi(window.tabList);
};
