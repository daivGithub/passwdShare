package cn.daiv.share.config.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Daiv
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "ignored")
public class IgnoredUrlsProperties {

    private List<String> urls = new ArrayList<>();
}