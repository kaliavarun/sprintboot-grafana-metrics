package com.springgrafana.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class GrafanaMetricsController {

    private static final Random random = new Random();

    @GetMapping("/memory")
    public String getRandomMemoryConsumption(){
        return String.format("%s%s", random.nextInt(1024), "Mb");
    }
}
