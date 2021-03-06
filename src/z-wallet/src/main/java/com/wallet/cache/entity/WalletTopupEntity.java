package com.wallet.cache.entity;

import lombok.Data;
import org.springframework.data.redis.core.RedisHash;

import javax.persistence.Id;

@Data
@RedisHash("WalletTopupEntity")
public class WalletTopupEntity {

    @Id
    public String id;
    public String userid;
    public long amount;
    public int status;
}
