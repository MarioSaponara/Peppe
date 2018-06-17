package main.controller;

import main.MainDispatcher;
import main.dto.ManagementExtensionStopDTO;
import main.model.User;
import main.service.LoginService;
import main.service.StopService;

import java.util.List;

public class ExtensionStopController implements Controller {

    private LoginService loginService;
    private StopService stopService;

    public ExtensionStopController() {
        loginService = new LoginService();
        stopService = new StopService();
    }


    // Gestisce chiamate da 3 view
    // da HomeDriverView (request => null)
    // da ExtensionStopView (request => managementExtensionStopDTO)
    // da ExtensionStopsView (request => managementExtensionStopDTO)
    public void doControl(Request request) {
        User loggedtuser = loginService.getLoggedUser();
        List<ManagementExtensionStopDTO> managementExtensionStopDTO;
        Request request_extension = new Request();
        if (request != null) {
            String extensionStopViewName = request.get("extensionStopViewName").toString();

            if(extensionStopViewName.equalsIgnoreCase("ExtensionStop")) {

                ManagementExtensionStopDTO ExtensionStop_DTO = (ManagementExtensionStopDTO)request.get("managementExtensionStopDTO");
                stopService.extensionStop(ExtensionStop_DTO);

                //Da usare se si torna nell'elenco per aggiornarlo
                //managementExtensionStopDTO = stopService.getAllExtensionStop(loggedtuser.getUsername());
                //request_extension.put("managementExtensionStopDTO", managementExtensionStopDTO);

                MainDispatcher.getInstance().callAction("Home", "doControl", null);

            } else if(extensionStopViewName.equalsIgnoreCase("ExtensionStops")){
                ManagementExtensionStopDTO managementSelectedExtensionStopDTO = (ManagementExtensionStopDTO)request.get("managementExtensionStopDTO");
                request_extension.put("managementExtensionStopDTO", managementSelectedExtensionStopDTO);
                MainDispatcher.getInstance().callView("ExtensionStop", request_extension);
            }
        } else {
            managementExtensionStopDTO = stopService.getAllExtensionStop(loggedtuser.getUsername());
            if (managementExtensionStopDTO.size() == 1) {
                request_extension.put("managementExtensionStopDTO", managementExtensionStopDTO.get(0));
                MainDispatcher.getInstance().callView("ExtensionStop", request_extension);
            } else if (managementExtensionStopDTO.size() > 1) {
                request_extension.put("managementExtensionStopDTO", managementExtensionStopDTO);
                MainDispatcher.getInstance().callView("ExtensionStops", request_extension);
            } else {
                request_extension.put("managementExtensionStopDTO", new ManagementExtensionStopDTO());
                MainDispatcher.getInstance().callView("ExtensionStop", request_extension);
            }
        }
    }


}
