%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/eb6c32b421ad3e4da9623fa504543e69d9323f57/exercises/hamming/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(hamming_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_empty_strands_test_'() ->
    {"empty strands",
     ?_assertMatch(0, hamming:distance([], []))}.

'2_single_letter_identical_strands_test_'() ->
    {"single letter identical strands",
     ?_assertMatch(0, hamming:distance("A", "A"))}.

'3_single_letter_different_strands_test_'() ->
    {"single letter different strands",
     ?_assertMatch(1, hamming:distance("G", "T"))}.

'4_long_identical_strands_test_'() ->
    {"long identical strands",
     ?_assertMatch(0,
		   hamming:distance("GGACTGAAATCTG", "GGACTGAAATCTG"))}.

'5_long_different_strands_test_'() ->
    {"long different strands",
     ?_assertMatch(9,
		   hamming:distance("GGACGGATTCTG", "AGGACGGATTCT"))}.

'6_disallow_first_strand_longer_test_'() ->
    {"disallow first strand longer",
     ?_assertMatch({error,
		    "left and right strands must be of equal "
		    "length"},
		   hamming:distance("AATG", "AAA"))}.

'7_disallow_second_strand_longer_test_'() ->
    {"disallow second strand longer",
     ?_assertMatch({error,
		    "left and right strands must be of equal "
		    "length"},
		   hamming:distance("ATA", "AGTG"))}.

'8_disallow_left_empty_strand_test_'() ->
    {"disallow left empty strand",
     ?_assertMatch({error,
		    "left and right strands must be of equal "
		    "length"},
		   hamming:distance([], "G"))}.

'9_disallow_right_empty_strand_test_'() ->
    {"disallow right empty strand",
     ?_assertMatch({error,
		    "left and right strands must be of equal "
		    "length"},
		   hamming:distance("G", []))}.
