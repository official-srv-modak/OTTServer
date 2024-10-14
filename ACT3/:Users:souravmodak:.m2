<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                              http://maven.apache.org/xsd/settings-1.0.0.xsd">

    <proxies>
        <proxy>
            <id>example-proxy</id>
            <active>true</active>
            <protocol>http</protocol>
            <host>proxy.example.com</host>
            <port>8080</port>
            <!-- If your proxy requires authentication, uncomment the following lines and provide username/password -->
            <!--
            <username>proxy-username</username>
            <password>proxy-password</password>
            -->
            <!-- List of non-proxy hosts (optional) -->
            <!--
            <nonProxyHosts>local.net|some.host.com</nonProxyHosts>
            -->
        </proxy>
    </proxies>
    
    <profiles>
        <profile>
            <repositories>
                <repository>
                    <id>central</id>
                    <url>http://repo.maven.apache.org/maven2/</url>
                </repository>
            </repositories>
            <pluginRepositories>
                <pluginRepository>
                    <id>central</id>
                    <url>http://repo.maven.apache.org/maven2/</url>
                </pluginRepository>
            </pluginRepositories>
            <!-- Add other profile configurations here if needed -->
        </profile>
    </profiles>
    
    <activeProfiles>
        <activeProfile>default</activeProfile>
    </activeProfiles>
    
</settings>
