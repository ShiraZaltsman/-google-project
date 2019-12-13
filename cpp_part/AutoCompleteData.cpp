//
// Created by shira on 12/11/19.
//

#include <map>
#include <fstream>
#include <iostream>
#include <cstring>
#include "AutoCompleteData.h"

using namespace std;

std::map<string,vector<pair<int,int>>> my_map;
std::map<int,vector<string>> files_lines;
std::map<int,string> src_name;

vector<pair<int, int>> get5highScore(const string &basicString);

void load_files(){
    std::vector<std::string> lines_file_1;
    std::vector<std::string> lines_file_2;
    string file_1_name = "/home/shira/Desktop/google-project-ShiraZaltsman/Moses_and_the_Sages__Bible.txt";
    string file_2_name= "/home/shira/Desktop/google-project-ShiraZaltsman/William_Shakespeare__Hamlet.txt";
    getFileContent(file_1_name, lines_file_1);
    getFileContent(file_2_name, lines_file_2);
    files_lines[1] = lines_file_1;
    files_lines[2] = lines_file_2;
    src_name[1] = "Moses_and_the_Sages__Bible";
    src_name[2] = "William_Shakespeare__Hamlet";

}
void load_map_from_file(string file_path){
    // Open the File
    std::ifstream in(file_path.c_str());

    // Check if object is valid
    if(!in)
    {
        std::cerr << "Cannot open the File : "<<file_path<<std::endl;
        return;
    }
    std::string line;
    // Read the next line from File untill it reaches the end.
    while (std::getline(in, line))
    {
        //string key = getkey(line);
        //int*
    }
    //Close The File
    in.close();
}

void load_map(){

    //('dds', [[4281, 2], [4220, 2], [4279, 2]])
    vector<pair<int,int>> myvec;
    myvec.push_back(pair(4281, 2));
    myvec.push_back(pair(4220, 2));
    myvec.push_back(pair(4279, 2));
    my_map["dds"]= myvec;

    //('bev', [[4197, 2]])
    vector<pair<int,int>> myvec2;
    myvec2.push_back(pair(4197, 2));
    my_map["bev"]= myvec2;

    //('olm', [[4138, 2]])
    vector<pair<int,int>> myvec3;
    myvec3.push_back(pair(4138, 2));
    my_map["olm"]= myvec3;

    //('dug', [[4196, 2]])
    vector<pair<int,int>> myvec4;
    myvec4.push_back(pair(4196, 2));
    my_map["dug"]= myvec4;

    //('oto', [[55274, 1], [55655, 1], [3268, 2]])
    vector<pair<int,int>> myvec5;
    myvec5.push_back(pair(55274, 1));
    myvec5.push_back(pair(55655, 1));
    myvec5.push_back(pair(3268, 2));
    my_map["oto"]= myvec5;

    //('bts', [[72069, 1], [72084, 1], [55215, 1], [2249, 2]])
    vector<pair<int,int>> myvec6;
    myvec6.push_back(pair(72069, 1));
    myvec6.push_back(pair(72084, 1));
    myvec6.push_back(pair(55215, 1));
    myvec6.push_back(pair(2249, 2));
    my_map["bts"]= myvec6;

}
bool getFileContent(std::string fileName, std::vector<std::string> & vecOfStrs)
{

    // Open the File
    std::ifstream in(fileName.c_str());

    // Check if object is valid
    if(!in)
    {
        std::cerr << "Cannot open the File : "<<fileName<<std::endl;
        return false;
    }

    std::string str;
    // Read the next line from File untill it reaches the end.
    while (std::getline(in, str))
    {
        vecOfStrs.push_back(str);
    }
    //Close The File
    in.close();
    return true;
}

vector<AutoCompleteData> GetBestKCompletions(const string& prefix){
    vector<AutoCompleteData> AutoCompleteResults;
    vector<pair<int,int>> res;
    try{
         res = my_map[prefix];
        for (int i = 0; i < res.size(); ++i) {
            AutoCompleteData coml;
            coml.offset = res[i].first;
            coml.score = strlen(prefix.c_str())*2;
            coml.completed_sentence = files_lines[res[i].second][coml.offset];
            coml.source_text = src_name[res[i].second];
            AutoCompleteResults.push_back(coml);
        }
    }
    catch (exception e){
        res = get5highScore(prefix);
    }

    return AutoCompleteResults;
}

vector<pair<int, int>> get5highScore(const string &basicString) {
    return vector<pair<int, int>>();
}
