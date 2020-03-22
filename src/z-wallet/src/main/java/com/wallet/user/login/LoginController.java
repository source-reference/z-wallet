package com.wallet.user.login;

import com.wallet.constant.ErrorCode;
import com.wallet.database.entity.WalletUser;
import com.wallet.database.repository.WalletUserRespository;
import com.wallet.entity.BaseResponse;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    WalletUserRespository walletUserRespository;

    @PostMapping("/um/login")
    public BaseResponse login(@RequestBody LoginRequest dataRequest) {
        LoginResponse response = new LoginResponse();
        try {

            if(StringUtils.isEmpty(dataRequest.phone)) {
                response.returncode = ErrorCode.VALIDATE_PHONE_INVALID.getValue();
                return response;
            }

            if(StringUtils.isEmpty(dataRequest.pin)) {
                response.returncode = ErrorCode.VALIDATE_PIN_INVALID.getValue();
                return response;
            }

            WalletUser user = walletUserRespository.findWalletUserByPhoneAndPin(dataRequest.phone, dataRequest.pin);
            if(user != null) {
                response.returncode = ErrorCode.SUCCESS.getValue();
                return response;
            }
            response.returncode = ErrorCode.USER_PASSWORD_WRONG.getValue();
        } catch (Exception ex) {
            ex.printStackTrace();
            response.returncode = ErrorCode.EXCEPTION.getValue();
        }
        return response;
    }
}