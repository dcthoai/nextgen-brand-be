package com.dct.nextgen.constants;

/**
 * // The list of authorities serves the function of granting permissions to users in the application
 * @author thoaidc
 */
@SuppressWarnings("unused")
public interface AuthorityConstants {

    interface System {
        String SYSTEM_ADMIN = "01";
    }

    interface Authorization {
        String AUTHORIZE = "02";
        String VIEW = "0201";
        String UPDATE = "0202";
    }

    interface Config {
        String CONFIG = "03";
        String VIEW = "0301";
        String UPDATE = "0302";
    }

    interface Account {
        String ACCOUNT = "04";
        String ACTIVATE = "0401";
        String VIEW = "0402";
        String INSERT = "0403";
        String UPDATE = "0404";
        String DELETE = "0405";
        String NOTIFY = "0406";
        String VIEW_REPORT = "0407";
        String EXPORT_REPORT = "0408";
    }
}
