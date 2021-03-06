%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\tomek\Documents\FIR\deltaFilteredDSP
%
% Auto-generated by MATLAB on 06-Jul-2020 07:52:19

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 1);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = "b110";
opts.VariableTypes = "double";

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
deltaFilteredDSP = readtable("<Ścieżka do folderu z plikami>\deltaFilteredDSP", opts);


%% Clear temporary variables
clear opts