// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dark.dart';
import 'package:code_editor/code_editor.dart';

String code1 = '''
#include "bits/stdc++.h"
#include <string.h>
using namespace std;

class Solution {
public:
    int convertToDecimal(string s){
        int decimal=0;
        //Logic 
        // 100  ---- >>>  1*2^2 + 0*2^1 + 0*2^0
        int p = s.length()-1;
        for(int i=0;i<s.length();i++){
            decimal += (int(s[i])-48) * pow(2,p);
            p--;
        }
        return decimal;
    }
    string convertToString(int d){
        string str;
        //Logic
          while(d)
          {
            if(d & 1) // 1
                str+='1';
            else // 0
                str+='0';
            d>>=1; // Right Shift by 1 
          }   
          reverse(str.begin(),str.end());
          return str;
    }
    void addBinary(string s1, string s2){
        // add s1 and s2 
        string ans;
        int decimal = convertToDecimal(s1) + convertToDecimal(s2);
        ans = convertToString(decimal);
        cout<<ans;
    }
    void addBinary2(string s1,string s2){
        int i = s1.length()-1;
        int j = s2.length()-1;
        int carry = 0;
        int result = 0;
        string answer = "";
        while(i>=0 or j>=0){
            if(s1[i] == '1'){
                result += 1;
            }
            if(s2[j] == '1'){
                result += 1;
            }
            if(result == 2)
            {
                carry += 1;
                result = 1;
                answer += '1';
            }
            else if (result == 1){
                result += carry;
                answer += '1';
            }
        }
    }
};

void init(){
  #ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin); 
    freopen("output.txt", "w", stdout);
    #endif 
}


int main()
{
  init();
  Solution ob;
  string s1,s2;
  cin>>s1>>s2;
  ob.addBinary(s1,s2);
  return 0;
}



/*
    
"100" + "1", return "101"
"11" + "1", return "100"
"1" + "0", return  "1"

*/



''';

List<FileEditor> files = [
  FileEditor(
    name: "page1.cpp",
    language: "cpp",
    code: code1, // [code] needs a string
  ),
  FileEditor(
    name: "page2.html",
    language: "html",
    code: "<a href='page1.html'>go back</a>",
  ),
  FileEditor(
    name: "style.css",
    language: "css",
    code: "a { color: red; }",
  ),
];

class projectPage extends StatefulWidget {
  @override
  State<projectPage> createState() => _projectPageState();
}

class _projectPageState extends State<projectPage> {
  List<String> contentOfPage1 = [
    "<!DOCTYPE html>",
    "<html lang='fr'>",
    "\t<body>",
    "\t\t<a href='page2.html'>go to page 2</a>",
    "\t</body>",
    "</html>",
  ];
  EditorModel model = EditorModel(
    files: files, // the files created above
    // you can customize the editor as you want
    styleOptions: EditorModelStyleOptions(
      fontSize: 18,
    ),
  );
  final myController = TextEditingController(text: 'hello!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            'Grocer',
            style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )),
      // ignore: prefer_const_literals_to_create_immutables
      body: SelectionArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text(
                  'Last Updated : 10/10/2020',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Description',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Grocer is an application to check the availability of a particular item in the local shops near you. With the help of grocer you can just make a request through our app which will let you know if the particular items is in stock or not.',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Tech Stack - Flutter, Dart, Git, Firebase',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CodeEditor(
                model: model,
                edit: false, // can edit the files? by default true
                onSubmit: (String? language, String? value) => print("yo"),
                disableNavigationbar:
                    false, // hide the navigation bar ? by default false
                textEditingController:
                    myController, // Provide an optional, custom TextEditingController.
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
