# Graph Theory

Cracking the Coding Interviewの問題4.1について、Swiftで回答の一例を作成してみます。

> Trees And Graphs
> 4.1. Route Between Nodes:
> Given a directed graph, design an algorithem to find out whether there is a route between two nodes.

問題内容：
与えられたグラフ（木構造）において、２つのノードが探索可能な関係にあるかを判別するアルゴリズムを作成します。

以下のグラフから [1] と [4]は探索可能な関係にあるが、[1] と [5] は探索不可能な関係にあります。

![Graph1](https://github.com/saenuruki/Trees-and-Graphs/blob/master/images/Graph1.png)


以下のグラフで実際に検証してみます。

![Graph2](https://github.com/saenuruki/Trees-and-Graphs/blob/master/images/Graph2.png)

- case1 : [10] と [5] は同じ木内にあり、[5] は [10] の子こノードのため、探索可能である。
- case2 : [10] と [4] は異なる木のため、探索不可能である。
- case3 : [9] と [5] は同じ木内にあり、[5] は [9] の子こノードのため、探索可能である。
- case4 : [8] と [5] は同じ木内であるが、[5] は [8] の子こノードではないため、探索不可能である。

