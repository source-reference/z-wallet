package com.bank.msb.unlink;

import lombok.Data;

@Data
public class UnLinkRequest {
    public String banktoken;
    public String cardnumber;
    public String cmnd;
    public String phone;
}
