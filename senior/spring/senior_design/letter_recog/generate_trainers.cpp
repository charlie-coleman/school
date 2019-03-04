#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>

int main(int argc, char** argv) {
    std::vector<std::string> letters;
    letters.push_back("./letter_set/A.png");
    letters.push_back("./letter_set/B.png");
    letters.push_back("./letter_set/C.png");
    letters.push_back("./letter_set/D.png");
    letters.push_back("./letter_set/E.png");
    letters.push_back("./letter_set/F.png");

    for(int i = 0; i < 6; i++) {
        cv::Mat src = cv::imread(letters[i], CV_LOAD_IMAGE_UNCHANGED);
        cv::Mat dst;

        std::cout << i << std::endl;

        for (int j = 1; j < 72; j++) {
            cv::Point2f pc(src.cols/2., src.rows/2.);
            cv::Mat r = cv::getRotationMatrix2D(pc, 5*j, 1.0);

            cv::warpAffine(src, dst, r, src.size(), cv::INTER_LINEAR, cv::BORDER_CONSTANT, cv::Scalar(255,255,255));

            char buff[100];
            snprintf(buff, sizeof(buff), "./letter_set/rotated/%c/%d.jpg", 'A'+i, 5*j);
            cv::imwrite(buff, dst);
        }
    }

    return 0;
}
