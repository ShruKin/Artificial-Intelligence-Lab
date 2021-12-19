import sys
from typing import List

POS_INF = sys.maxsize
NEG_INF = -sys.maxsize - 1


class Node:
    value = None
    children = []

    def __init__(self, value: int = None, children: List['Node'] = []):
        self.value = value
        self.children = children

    def __repr__(self) -> str:
        children_repr = ", ".join(
            [f"<Node {child.value}>" for child in self.children])

        return f"<Node {self.value}> [{children_repr}]"


def alphabeta(node: Node, alpha: int = NEG_INF, beta: int = POS_INF, maximizingPlayer: bool = True):
    if len(node.children) == 0:
        return node.value

    if maximizingPlayer:
        value = NEG_INF
        for child in node.children:
            value = max(value, alphabeta(child, alpha, beta, False))
            if value >= beta:
                break
            alpha = max(alpha, value)
        return value

    else:
        value = POS_INF
        for child in node.children:
            value = min(value, alphabeta(child, alpha, beta, True))
            if value <= alpha:
                break
            beta = min(beta, value)
        return value


head = Node(children=[
    Node(children=[
            Node(children=[
                Node(children=[
                    Node(value=5),
                    Node(value=6)
                ]),
                Node(children=[
                    Node(value=7),
                    Node(value=4),
                    Node(value=5)
                ])
            ]),
            Node(children=[
                Node(children=[
                    Node(value=3)
                ])
            ])
            ]),
    Node(children=[
        Node(children=[
            Node(children=[
                Node(value=6)
            ]),
            Node(children=[
                Node(value=6),
                Node(value=9)
            ])
        ]),
        Node(children=[
            Node(children=[
                Node(value=7)
            ])
        ])
    ]),
    Node(children=[
        Node(children=[
            Node(children=[
                Node(value=5)
            ])
        ]),
        Node(children=[
            Node(children=[
                Node(value=9),
                Node(value=8)
            ]),
            Node(children=[
                Node(value=6)
            ])
        ])
    ]),
])

print(alphabeta(head))

# Tree: https://en.wikipedia.org/wiki/File:AB_pruning.svg
