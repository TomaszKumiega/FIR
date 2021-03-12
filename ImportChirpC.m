%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\tomek\Documents\FIR\chirpFilteredC
%
% Auto-generated by MATLAB on 06-Jul-2020 08:50:07

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 1);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = "ba4110";
opts.VariableTypes = "double";

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
chirpFilteredC = readtable("<Ścieżka do folderu z plikami>\chirpFilteredC", opts);


%% Clear temporary variables
clear opts