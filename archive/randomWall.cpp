#include <string>
#include <iostream>
#include <filesystem>
#include <random>
#include <vector>
#include <cstdlib>

using std::cout, std::cin, std::endl;
using std::vector;
namespace fs = std::filesystem;

fs::path setHomeDirectory()
{
    fs::path userHome = std::getenv("HOME");
    fs::path userWalls = userHome / "Pictures" / "Walls";

    return userWalls;
}

std::string selectRandomWall(const fs::path &wallDirectory)
{
    vector<fs::path> wallList;
    for (const auto &wall : fs::directory_iterator(wallDirectory))
    {
        if (wall.is_regular_file())
        {
            wallList.push_back(wall.path());
        }
    }

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> xRandPos(0, 1919);
    std::uniform_int_distribution<int> yRandPos(0, 1079);
    std::uniform_int_distribution<int> randomGenIndex(0, wallList.size() - 1);

    int randomIndex = randomGenIndex(gen);
    int randomXPosition = xRandPos(gen);
    int randomYPosition = yRandPos(gen);
    fs::path selectedWall = wallList[randomIndex];

    const std::string randomCoords = std::to_string(randomXPosition) + ',' + std::to_string(randomYPosition);

    vector<std::string> cmd = {
        "swww",
        "img",
        selectedWall,
        "--transition-type",
        "grow",
        "--transition-pos",
        randomCoords,
        "--transition-duration",
        "5",
        "--transition-fps",
        "60",
        "--transition-bezier",
        "0.25,0.1,0.25,1.0",
    };

    std::string fullCMD;
    for (const auto &partCMD : cmd)
    {
        fullCMD += partCMD + ' ';
    }

    return fullCMD;
}

int main()
{
    fs::path wallDirectory = setHomeDirectory();
    std::string cmd = selectRandomWall(wallDirectory);

    cout << cmd;

    return 0;
}