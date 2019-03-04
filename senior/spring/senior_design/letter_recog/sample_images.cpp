#include <opencv2/opencv.hpp>
#include <iostream>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>
#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>

int main(int argc, char** argv) {
    cv::Mat src = cv::imread(argv[1], CV_LOAD_IMAGE_UNCHANGED);
    cv::Mat gray;
    cv::cvtColor(src, gray, CV_BGR2GRAY);
    tesseract::TessBaseAPI tess;
    tess.Init(NULL, "eng", tesseract::OEM_DEFAULT);
    tess.SetPageSegMode(tesseract::PSM_SINGLE_CHAR);

    tess.TesseractRect(gray.data, 1, gray.step1(), 0, 0, gray.cols, gray.rows);
    std::string output = tess.GetUTF8Text();
    Boxa* bounds = tess.GetWords(NULL);
    l_int32 count = bounds->n;

    for(int i = 0; i < count; i++) {
        Box* b = bounds->box[i];
        cv::Rect rect(b->x, b->y, b->w, b->h);
        cv::rectangle(src, rect, cv::Scalar(0,0,255), 2, cv::LINE_8, 0);
    }

    std::cout << output << std::endl;
    std::string text(1, output[0]);
    cv::putText(src, text, cv::Point(5,60), cv::FONT_HERSHEY_PLAIN, 5, cv::Scalar(0,200,0), 2);

    std::string filename = "../poster/"+ text + ".jpg";
    cv::imwrite(filename, src);
}
