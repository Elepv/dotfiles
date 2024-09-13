// 获取当前连接的 WiFi 名称
const wifiName = $network.wifi.ssid;

// 判断是否连接到指定的 WiFi 网络
if (wifiName === "CyndiHome5G") {
    // 设置 DNS 服务器为 10.0.9.28
    $done({
        server: "10.0.9.28"
    });
} else {
    // 使用系统默认的 DNS 服务器
    $done({});
}
