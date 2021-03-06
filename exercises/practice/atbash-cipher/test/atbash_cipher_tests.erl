%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/atbash-cipher/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(atbash_cipher_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_encode_yes_test_'() ->
    {"encode yes",
     ?_assertEqual("bvh", atbash_cipher:encode("yes"))}.

'2_encode_no_test_'() ->
    {"encode no",
     ?_assertEqual("ml", atbash_cipher:encode("no"))}.

'3_encode_omg_test_'() ->
    {"encode OMG",
     ?_assertEqual("lnt", atbash_cipher:encode("OMG"))}.

'4_encode_spaces_test_'() ->
    {"encode spaces",
     ?_assertEqual("lnt", atbash_cipher:encode("O M G"))}.

'5_encode_mindblowingly_test_'() ->
    {"encode mindblowingly",
     ?_assertEqual("nrmwy oldrm tob",
		   atbash_cipher:encode("mindblowingly"))}.

'6_encode_numbers_test_'() ->
    {"encode numbers",
     ?_assertEqual("gvhgr mt123 gvhgr mt",
		   atbash_cipher:encode("Testing,1 2 3, testing."))}.

'7_encode_deep_thought_test_'() ->
    {"encode deep thought",
     ?_assertEqual("gifgs rhurx grlm",
		   atbash_cipher:encode("Truth is fiction."))}.

'8_encode_all_the_letters_test_'() ->
    {"encode all the letters",
     ?_assertEqual("gsvjf rxpyi ldmul cqfnk hlevi gsvoz "
		   "abwlt",
		   atbash_cipher:encode("The quick brown fox jumps over the lazy "
					"dog."))}.

'9_decode_exercism_test_'() ->
    {"decode exercism",
     ?_assertEqual("exercism",
		   atbash_cipher:decode("vcvix rhn"))}.

'10_decode_a_sentence_test_'() ->
    {"decode a sentence",
     ?_assertEqual("anobstacleisoftenasteppingstone",
		   atbash_cipher:decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v"))}.

'11_decode_numbers_test_'() ->
    {"decode numbers",
     ?_assertEqual("testing123testing",
		   atbash_cipher:decode("gvhgr mt123 gvhgr mt"))}.

'12_decode_all_the_letters_test_'() ->
    {"decode all the letters",
     ?_assertEqual("thequickbrownfoxjumpsoverthelazydog",
		   atbash_cipher:decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz "
					"abwlt"))}.

'13_decode_with_too_many_spaces_test_'() ->
    {"decode with too many spaces",
     ?_assertEqual("exercism",
		   atbash_cipher:decode("vc vix    r hn"))}.

'14_decode_with_no_spaces_test_'() ->
    {"decode with no spaces",
     ?_assertEqual("anobstacleisoftenasteppingstone",
		   atbash_cipher:decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv"))}.
