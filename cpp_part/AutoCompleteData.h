//
// Created by shira on 12/11/19.
//

#ifndef CPP_PART_AUTOCOMPLETEDATA_H
#define CPP_PART_AUTOCOMPLETEDATA_H

#include <string>
#include <vector>

using namespace std;

void load_map();
void load_files();
class AutoCompleteData {
public:
    string completed_sentence;
    string source_text;
    int offset;
    int score;
// methods that you need to define by yourself
};

vector<AutoCompleteData> GetBestKCompletions(const string& prefix);


bool getFileContent(std::string fileName, std::vector<std::string> & vecOfStrs);



#endif //CPP_PART_AUTOCOMPLETEDATA_H
