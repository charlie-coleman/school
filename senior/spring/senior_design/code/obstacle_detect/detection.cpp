#include <opencv2/opencv.hpp>
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <iostream>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

cv::Mat cannyEdges(cv::Mat src, int lowTH, int highTH) {
  cv::Mat cannied;
  cv::Canny(src, cannied, lowTH, highTH, 3);
  return cannied;
}

cv::Mat templateMatch(cv::Mat templ, cv::Mat img) {
  cv::Mat disp, result;
  img.copyTo(disp);

  int result_cols = img.cols - templ.cols + 1;
  int result_rows = img.rows - templ.rows + 1;


  result.create(img.cols, img.rows, CV_32FC1);
  cv::matchTemplate(img, templ, result, cv::TM_SQDIFF_NORMED);

  cv::normalize(result, result, 0, 1, cv::NORM_MINMAX, -1, cv::Mat());
  cv::Point matchLoc, minLoc, maxLoc;
  double minVal, maxVal;

  cv::minMaxLoc(result, &minVal, &maxVal, &minLoc, &maxLoc, cv::Mat());
  matchLoc = minLoc;

  cv::rectangle(disp, matchLoc, cv::Point(matchLoc.x + templ.cols, matchLoc.y + templ.rows), cv::Scalar::all(0), 2, 8, 0);
  cv::rectangle(result, matchLoc, cv::Point(matchLoc.x + templ.cols, matchLoc.y + templ.rows), cv::Scalar::all(0), 2, 8, 0);
  cv::imshow("Found obstacle", disp);

  cv::waitKey();
  return result;
}

void detectPingPongs(cv::Mat img) {
  cv::Mat gray;
  cv::cvtColor(img, gray, CV_BGR2GRAY);
  cv::Mat blurred;
  cv::blur(img, blurred, cv::Size(2,2));
  std::vector<cv::Vec3f> circles;
  cv::imshow("Canny", cannyEdges(blurred, 50, 200));
  cv::HoughCircles(gray, circles, cv::HOUGH_GRADIENT, 1.3, 30, 300, 50, 15, 300);

  for (int i = 0; i < circles.size(); i++) {
    cv::Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
    int radius = cvRound(circles[i][2]);

    std::cout << center << ", " << radius << std::endl;
    cv::circle(img, center, radius, cv::Scalar::all(0), 2, 8, 0);
  }

  // cv::imshow("Circles highlighted", img);
  cv::waitKey(5000);
}

int main(int argc, char** argv) {
    cv::Mat src = cv::imread(argv[1], CV_LOAD_IMAGE_UNCHANGED);
    cv::Mat obst_edg = cv::imread("./obstacle.jpg", CV_LOAD_IMAGE_UNCHANGED);
    if (!src.data || !obst_edg.data) {
      std::cout << "Image not loaded" << std::endl;
      return -1;
    }


    detectPingPongs(src);
    // cv::Mat res = templateMatch(obst_edg, src);
}
