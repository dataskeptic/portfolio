#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Hero {
    string name;
    int accuracy;
    int speed;
    int stupidity;
};

bool compare(const Hero &h1, const Hero &h2) {
    if (h1.accuracy != h2.accuracy) {
        return h1.accuracy > h2.accuracy;
    }
    if (h1.speed != h2.speed) {
        return h1.speed > h2.speed;
    }
    if (h1.stupidity != h2.stupidity) {
        return h1.stupidity < h2.stupidity;
    }
    return h1.name < h2.name;
}

int main() {
    int n;
    cin >> n;

    vector<Hero> heroes(n);

    for (int i = 0; i < n; ++i) {
        cin >> heroes[i].name >> heroes[i].accuracy >> heroes[i].speed >> heroes[i].stupidity;
    }

    sort(heroes.begin(), heroes.end(), compare);

    for (const auto &hero : heroes) {
        cout << hero.name << endl;
    }

    return 0;
}
