#include <algorithm>
#include <string>
#include <vector>
#include <iostream>
#include <format>

int main()
{
    std::vector<std::string> states = {
        "T",
        "G",
        "CT",
        "VT",
        "VG",
        "RT",
    };

    std::string currentState;
    std::cin >> currentState;

    auto currentIndex = std::find(states.begin(), states.end(), currentState);

    if (currentIndex != states.end())
    {
        size_t index = std::distance(states.begin(), currentIndex);

        size_t nextIndex = (index + 1) % states.size();

        std::cout << states[nextIndex];
    }

    return 0;
}
