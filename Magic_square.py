def magic_square(A): #A to macierz
    n = len(A)
    m = len(A[0])
    if n == m:
        sum_row = sum(A[0])
        for i in range(len(A)):
            if sum_row == sum(A[i]):
                continue
            return False
        sum_column = 0
        for i in range(len(A[0])):
            sum_column += A[i][0]
        for i in range(len(A[0])):
            sum_other_column = 0
            for j in range (len(A[0])):
                sum_other_column += A[j][i]
            if sum_column == sum_other_column and sum_row == sum_column:
                continue
            else:
                return False
        sum_diagonal = 0
        sum_diagonal2 = 0
        for i in range (n):
            sum_diagonal += A[i][i]
            sum_diagonal2 += A[len(A)-1][len(A)-1]
        if sum_diagonal != sum_diagonal2 or sum_diagonal2 != suma_column:
            return False
    return True
