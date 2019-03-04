#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>

void example2_5(const cv::Mat & image) {
    cv::namedWindow("Example 2_5 IN", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Example 2_5 OUT", cv::WINDOW_AUTOSIZE);

    cv::imshow("Example 2_5 IN", image);

    cv::Mat out;

    cv::GaussianBlur(image, out, cv::Size(5,5), 3, 3);
    cv::GaussianBlur(  out, out, cv::Size(5,5), 3, 3);

    cv::imshow("Example 2_5 OUT", out);
    cv::waitKey(0);
}

#include <opencv2/opencv.hpp>

int main(int argc, char** argv) {
  cv::Mat img = cv::imread(argv[1],-1);
  if(img.empty()) return -1;
  example2_5(img);
  return 0;
}
