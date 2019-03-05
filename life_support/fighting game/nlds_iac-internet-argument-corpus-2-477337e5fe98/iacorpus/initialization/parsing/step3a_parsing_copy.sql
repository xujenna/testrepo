# this has code for initializing the shared tables relevant to parsing

# If you want to keep lookup ids consistent use this replacing the dbs as appropriate:
insert into word select * from convinceme.word;
insert into dependency_relation select * from convinceme.dependency_relation;
insert into pos_tag select * from convinceme.pos_tag;
insert into parse_tag select * from convinceme.parse_tag;
insert into corenlp_named_entity_tag select * from convinceme.corenlp_named_entity_tag;



# This list is not complete!
#  These are only the basic dependencies, in the collapsed form there are more - e.g. prep_over, conj_and
insert into dependency_relation
  (dependency_relation_id,
   parent_dependency_relation_id,
   dependency_relation,
   dependency_relation_long) values
(1, null, "root", "root"),
(2, null, "dep", "dependent"),
(3, 2, "aux", "auxiliary"),
(4, 3, "auxpass", "passive auxiliary"),
(5, 3, "cop", "copula"),
(6, 2, "arg", "argument"),
(7, 6, "agent", "agent"),
(8, 6, "comp", "complement"),
(9, 8, "acomp", "adjectival complement"),
(10, 8, "ccomp", "clausal complement with internal subject"),
(11, 8, "xcomp", "clausal complement with external subject"),
(12, 8, "obj", "object"),
(13, 12, "dobj", "direct object"),
(14, 12, "iobj", "indirect object"),
(15, 12, "pobj", "object of preposition"),
(16, 6, "subj", "subject"),
(17, 16, "nsubj", "nominal subject"),
(18, 17, "nsubjpass", "passive nominal subject"),
(19, 16, "csubj", "clausal subject"),
(20, 19, "csubjpass", "passive clausal subject"),
(21, 2, "cc", "coordination"),
(22, 2, "conj", "conjunct"),
(23, 2, "expl", "expletive (expletive \"there\")"),
(24, 2, "mod", "modifier"),
(25, 24, "amod", "adjectival modifier"),
(26, 24, "appos", "appositional modifier"),
(27, 24, "advcl", "adverbial clause modifier"),
(28, 24, "det", "determiner"),
(29, 24, "predet", "predeterminer"),
(30, 24, "preconj", "preconjunct"),
(31, 24, "vmod", "reduced, non-finite verbal modifier"),
(32, 24, "mwe", "multi-word expression modifier"),
(33, 32, "mark", "marker (word introducing an advcl or ccomp)"),
(34, 24, "advmod", "adverbial modifier"),
(35, 34, "neg", "negation modifier"),
(36, 24, "rcmod", "relative clause modifier"),
(37, 24, "quantmod", "quantifier modifier"),
(38, 24, "nn", "noun compound modifier"),
(39, 24, "npadvmod", "noun phrase adverbial modifier"),
(40, 39, "tmod", "temporal modifier"),
(41, 24, "num", "numeric modifier"),
(42, 24, "number", "element of compound number"),
(43, 24, "prep", "prepositional modifier"),
(44, 24, "poss", "possession modifier"),
(45, 24, "possessive", "possessive modifier ('s)"),
(46, 24, "prt", "phrasal verb particle"),
(47, 2, "parataxis", "parataxis"),
(48, 2, "punct", "punctuation"),
(49, 2, "ref", "referent"),
(50, 2, "sdep", "semantic dependent"),
(51, 50, "xsubj", "controlling subject");




#penn part of speech tags, from amalgam
insert into pos_tag (pos_tag_id, pos_tag, pos_tag_description) values
(0, "X", "Unknown, uncertain, or unbracketable"),
(1, "$", "dollar"),
(2, "``", "opening quotation mark"),
(3, "''", "closing quotation mark"),
(4, "(", "opening parenthesis"),
(5, ")", "closing parenthesis"),
(6, ",", "comma"),
(7, "--", "dash"),
(8, ".", "sentence terminator"),
(9, ":", "colon or ellipsis"),
(10, "CC", "conjunction, coordinating"),
(11, "CD", "numeral, cardinal"),
(12, "DT", "determiner"),
(13, "EX", "existential there"),
(14, "FW", "foreign word"),
(15, "IN", "preposition or conjunction, subordinating"),
(16, "JJ", "adjective or numeral, ordinal"),
(17, "JJR", "adjective, comparative"),
(18, "JJS", "adjective, superlative"),
(19, "LS", "list item marker"),
(20, "MD", "modal auxiliary"),
(21, "NN", "noun, common, singular or mass"),
(22, "NNP", "noun, proper, singular"),
(23, "NNPS", "noun, proper, plural"),
(24, "NNS", "noun, common, plural"),
(25, "PDT", "pre-determiner"),
(26, "POS", "genitive marker"),
(27, "PRP", "pronoun, personal"),
(28, "PRP$", "pronoun, possessive"),
(29, "RB", "adverb"),
(30, "RBR", "adverb, comparative"),
(31, "RBS", "adverb, superlative"),
(32, "RP", "particle"),
(33, "SYM", "symbol"),
(34, "TO", "\"to\" as preposition or infinitive marker"),
(35, "UH", "interjection"),
(36, "VB", "verb, base form"),
(37, "VBD", "verb, past tense"),
(38, "VBG", "verb, present participle or gerund"),
(39, "VBN", "verb, past participle"),
(40, "VBP", "verb, present tense, not 3rd person singular"),
(41, "VBZ", "verb, present tense, 3rd person singular"),
(42, "WDT", "WH-determiner"),
(43, "WP", "WH-pronoun"),
(44, "WP$", "WH-pronoun, possessive"),
(45, "WRB", "Wh-adverb"),
(46, "-LRB-", "opening parenthesis"),
(47, "-RRB-", "closing parenthesis"),
(48, "#", "hash mark");