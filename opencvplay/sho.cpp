#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>

using namespace std;
using namespace cv;

int main()
{
    string image_path = samples::findFile("aero3.jpg");
    Mat img = imread(image_path, IMREAD_COLOR);
    if(img.empty()) {
        cout << "Could not read the image: " << image_path << endl;
        return 1;
    }

    imshow("Display window", img);
    int k = waitKey(0); // Wait for a keystroke in the window
    if(k == 's')
# if key pressed happened to be s, write an image.
        imwrite("aero3.png", img);

    return 0;
}
