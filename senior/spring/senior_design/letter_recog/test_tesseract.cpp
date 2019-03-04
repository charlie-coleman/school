#include <opencv2/opencv.hpp>
#include <iostream>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>
#include <tesseract/baseapi.h>

int main(int argc, char** argv) {
    cv::Mat src = cv::imread(argv[1], CV_LOAD_IMAGE_UNCHANGED);
    cv::Mat gray, dst;
    cv::cvtColor(src, gray, CV_BGR2GRAY);
    tesseract::TessBaseAPI tess;
    tess.Init(NULL, "eng", tesseract::OEM_DEFAULT);
    tess.SetPageSegMode(tesseract::PSM_SINGLE_CHAR);

    int rot = 0;
    char* output;
    do {
        cv::Point2f pc(gray.cols/2., gray.rows/2.);
        cv::Mat r = cv::getRotationMatrix2D(pc, rot, 1.0);
        cv::warpAffine(gray, dst, r, gray.size(), cv::INTER_LINEAR, cv::BORDER_CONSTANT, cv::Scalar(255,255,255));

        tess.TesseractRect(dst.data, 1, dst.step1(), 0, 0, dst.cols, dst.rows);
        output = tess.GetUTF8Text();

        rot += 5;
    } while (output[0] != 'A' && output[0] != 'B'
          && output[0] != 'C' && output[0] != 'D'
          && output[0] != 'E' && output[0] != 'F' && rot < 360);
    std::cout << output;
    return 0;
}
