#include <iostream>
#include <map>
#include <vector>
#include <fstream>
#include <cstring>
#include "AutoCompleteData.h"

void get_input() {
    string word;
    cout<<"enter word to search:\n";
    cin >> word;
    vector<AutoCompleteData> res = GetBestKCompletions(word);
    for (int i = 0; i < res.size(); i++)
    {
        cout<<res[i].score<<" "<<res[i].source_text<<" "<<res[i].offset<<" "<<res[i].completed_sentence<<endl;
    }
}

using namespace std;

int main() {

    load_map();
    load_files();
    get_input();
    return 0;
}


