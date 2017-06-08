# wordsort
This is in response to a homework project / contest for developing a program
that sorts every line in an alphanumeric text file by the k-th word. Due to
concerns about homework submission, I only permitted myself to use a single
file in the original project. prj/ contains the closest surviving copy to what
was originally submitted, which boils down to a bucket sort. Afterwards, I
continued to keep working on the project and began to use a burstsort-like
method by partially ordering the words in a trie with very large, bag-like
leaves. This can be found in trie/.

I focused my efforts on optimizing when the target sorting word is the last
word in the line. In the process of improving the performance of this case
Due to changes following submission of the project, an optimization for this
case broke the case where k is not the last word in every line. Every line is
limited by 128 characters, so detecting that it will always be the last word
just assumes that the line with the most words will be single characters divided
by single spaces. So, sorting by anything after the 64th word will always sort
by the word directly before the newline character. This allows for
simplifications that significantly improve the performance of tokenizing.

One of my biggest mistages with this version is that I optimized for when my
flags were on, and not for when they were off because I misinterpreted the high
cost of output due to the inevitable cost of file io. The true unaccounted for
cost is that of using printf.

By framing the problem as a trie and partitioning into growable buckets, I was
able to reduce the working set such that it could be sorted using a bucket sort
in cache. Because I grew the trie as each bucket filled up, the unnecessary
work of enforcing order during the tokenizing step was eliminated and the
majority of the order was enforced through hashing on the prefix of the strings.
