def has_factor(N, L):
    if N % L == 0:
        return True

    else:
        return L * L < N and has_factor(N, L+2)


def is_prime(P):
    if P == 2:
        return True

    if P == 3:
        return True

    else:
        return P > 3 and P % 2 != 0 and not(has_factor(P, 3))
