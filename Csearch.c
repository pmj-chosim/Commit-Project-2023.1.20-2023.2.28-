//C로 웹 검색해보기. C로도 가능한지 얼마나 어려운지 한 번 궁금해서 해봄.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>

int main(void)
{
    CURL *curl;
    CURLcode res;
    char *url = "https://www.google.com";
    char *search_str = "Google";
    char *html_data;
    size_t size = 0;
    
    // curl 초기화
    curl = curl_easy_init();
    if(curl) {
        // URL 설정
        curl_easy_setopt(curl, CURLOPT_URL, url);
        // 리다이렉션 허용
        curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
        // 데이터 수신 콜백 설정
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &write_callback);
        // 수신한 데이터 저장할 버퍼 설정
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &html_data);
        // 데이터 가져오기
        res = curl_easy_perform(curl);
        // 작업 종료
        curl_easy_cleanup(curl);

        // 가져온 데이터에서 검색 문자열 찾기
        if (html_data) {
            char *p = strstr(html_data, search_str);
            if (p) {
                printf("'%s' found in HTML code\n", search_str);
            } else {
                printf("'%s' not found in HTML code\n", search_str);
            }
            free(html_data);
        }
    }
    
    return 0;
}

// curl 콜백 함수
size_t write_callback(char *ptr, size_t size, size_t nmemb, char **userdata)
{
    size_t realsize = size * nmemb;
    char *data = realloc(*userdata, size + realsize);
    if (data == NULL) {
        printf("Failed to allocate memory for HTML code\n");
        return 0;
    }
    *userdata = data;
    memcpy(&(*userdata)[size], ptr, realsize);
    size += realsize;
    return realsize;
}
