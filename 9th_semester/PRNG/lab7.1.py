U1 = [0.113, 0.642, 0.075, 0.316, 0.173, 0.262, 0.815, 0.296, 0.633, 0.682, 0.155, 0.476, 0.493, 0.902, 0.095, 0.856, 0.753, 0.922, 0.635, 0.436, 0.413, 0.742, 0.775, 0.216, 0.473, 0.362, 0.515, 0.196, 0.933, 0.782, 0.855, 0.376, 0.793, 0.002, 0.795, 0.756, 0.053, 0.022, 0.335, 0.336, 0.713, 0.842, 0.475, 0.116, 0.773, 0.462, 0.215, 0.096, 0.233, 0.882, 0.555, 0.276, 0.093, 0.102, 0.495, 0.656, 0.353, 0.122, 0.035, 0.236, 0.013, 0.942, 0.175, 0.016, 0.073, 0.562, 0.915, 0.996, 0.533, 0.982, 0.255, 0.176, 0.393, 0.202, 0.195, 0.556, 0.653, 0.222, 0.735, 0.136, 0.313, 0.042, 0.875, 0.916, 0.373, 0.662, 0.615, 0.896, 0.833, 0.082, 0.955, 0.076, 0.693, 0.302, 0.895, 0.456, 0.953, 0.322, 0.435, 0.036, 0.613, 0.142, 0.575, 0.816, 0.673, 0.762, 0.315, 0.796, 0.133, 0.182, 0.655, 0.976, 0.993, 0.402, 0.595, 0.356, 0.253, 0.422, 0.135, 0.936, 0.913, 0.242, 0.275, 0.716, 0.973, 0.862, 0.015, 0.696, 0.433, 0.282, 0.355, 0.876, 0.293, 0.502, 0.295, 0.256, 0.553, 0.522, 0.835, 0.836, 0.213, 0.342, 0.975, 0.616, 0.273, 0.962, 0.715, 0.596, 0.733, 0.382, 0.055, 0.776, 0.593, 0.602, 0.995, 0.156, 0.853, 0.622, 0.535, 0.736, 0.513, 0.442, 0.675, 0.516, 0.573, 0.062, 0.415, 0.496, 0.033, 0.482, 0.755, 0.676, 0.893, 0.702, 0.695, 0.056, 0.153, 0.722, 0.235, 0.636, 0.813, 0.542, 0.375, 0.416, 0.873, 0.162, 0.115, 0.396, 0.333, 0.582, 0.455, 0.576, 0.193, 0.802, 0.395, 0.956, 0.453, 0.822, 0.935, 0.536]
U2 = [0.371, 0.908, 0.357, 0.630, 0.551, 0.768, 0.577, 0.570, 0.931, 0.028, 0.597, 0.110, 0.511, 0.688, 0.417, 0.250, 0.291, 0.748, 0.037, 0.990, 0.271, 0.208, 0.457, 0.330, 0.451, 0.068, 0.677, 0.270, 0.831, 0.328, 0.697, 0.810, 0.411, 0.988, 0.517, 0.950, 0.191, 0.048, 0.137, 0.690, 0.171, 0.508, 0.557, 0.030, 0.351, 0.368, 0.777, 0.970, 0.731, 0.628, 0.797, 0.510, 0.311, 0.288, 0.617, 0.181, 0.319, 0.345, 0.147, 0.501, 0.959, 0.625, 0.707, 0.621, 0.199, 0.105, 0.667, 0.541, 0.039, 0.785, 0.027, 0.261, 0.479, 0.665, 0.787, 0.781, 0.519, 0.745, 0.947, 0.632, 0.387, 0.022, 0.417, 0.332, 0.287, 0.322, 0.517, 0.032, 0.187, 0.622, 0.617, 0.732, 0.087, 0.922, 0.717, 0.432, 0.987, 0.222, 0.817, 0.132, 0.887, 0.522, 0.917, 0.363, 0.015, 0.819, 0.927, 0.643, 0.575, 0.939, 0.698, 0.351, 0.532, 0.769, 0.118, 0.691, 0.712, 0.629, 0.338, 0.631, 0.092, 0.889, 0.358, 0.171, 0.672, 0.549, 0.178, 0.842, 0.680, 0.606, 0.708, 0.162, 0.320, 0.886, 0.330, 0.738, 0.554, 0.186, 0.450, 0.978, 0.034, 0.146, 0.370, 0.818, 0.714, 0.506, 0.090, 0.258, 0.594, 0.266, 0.610, 0.829, 0.902, 0.423, 0.840, 0.049, 0.842, 0.803, 0.693, 0.753, 0.373, 0.113, 0.093, 0.553, 0.973, 0.844, 0.721, 0.350, 0.483, 0.624, 0.781, 0.970, 0.223, 0.604, 0.241, 0.921, 0.791, 0.781, 0.011, 0.721, 0.391, 0.981, 0.535, 0.433, 0.979, 0.821, 0.255, 0.873, 0.859, 0.174, 0.459, 0.904, 0.669, 0.074, 0.759, 0.004, 0.369, 0.974, 0.059, 0.635]


def interval_criterion(U):
    n = 40
    i = -1
    s = 0
    a, b = 0.5, 0.7
    t = 9
    print(f'n={n}\n(a, b)=({a}, {b})\n')
    COUNT = [0] * (t + 1)
    while s < n:    
        r = 0
        i += 1
        while not (a < U[i] and U[i] < b):
            r += 1
            i += 1
        if r > t:
            COUNT[t] += 1
        else:
            COUNT[r] += 1
        s += 1
    p = b - a
    table = [(r, COUNT[r], round(n*p*(1 - p)**r, 2)) for r in range(t)]
    table.append((len(table), COUNT[t], round(n*(1 - p)**t, 2)))

    print('  r | ', end='')
    for i in range(len(table)):
        print(str(table[i][0]).rjust(5), end=' ')
    print('\n Yi | ', end='')
    for i in range(len(table)):
        print(str(table[i][1]).rjust(5), end=' ')
    print('\nnpi | ', end='')
    for i in range(len(table)):
        print(str(table[i][2]).rjust(5), end=' ')
    print('')
    V = 0
    for i in range(len(table)):
        V += (table[i][1] - table[i][2]) ** 2 / table[i][2]

    print(f'\nV = {round(V, 2)}')

    knut_column = {0: '1%', 1: '5%', 2: '25%', 3: '50%', 4: '75%', 5: '95%', 6: '99%'}
    knut_table = {
        1: [0.00016, 0.00393, 0.1015, 0.4549, 1.323, 3.841, 6.635],
        2: [0.02010, 0.1026, 0.5754, 1.386, 2.773, 5.991, 9.210],
        3: [0.1148, 0.3518, 1.213, 2.366, 4.108, 7.815, 11.34],
        4: [0.2971, 0.7107, 1.923, 3.357, 5.385, 9.488, 13.28],
        5: [0.5543, 1.1455, 2.675, 4.351, 6.626, 11.07, 15.09],
        6: [0.8721, 1.635, 3.455, 5.348, 7.841, 12.59, 16.81],
        7: [1.239, 2.167, 4.255, 6.346, 9.037, 14.07, 18.48],
        8: [1.646, 2.733, 5.071, 7.344, 10.22, 15.51, 20.09],
        9: [2.088, 3.325, 5.899, 8.343, 11.39, 16.92, 21.67],
        10: [2.558, 3.940, 6.737, 9.342, 12.55, 18.31, 23.21],
        11: [3.053, 4.575, 7.584, 10.34, 13.70, 19.68, 24.72],
        12: [3.571, 5.226, 8.438, 11.34, 14.85, 21.03, 26.22],
        15: [5.229, 7.261, 11.04, 14.34, 18.25, 25.00, 30.58],
        20: [8.260, 10.85, 15.45, 19.34, 23.83, 31.41, 37.57],
        30: [14.95, 18.49, 24.48, 29.34, 34.80, 43.77, 50.89],
        50: [29.71, 34.76, 42.94, 49.33, 56.33, 67.50, 76.15]
    }
    k = t + 1
    print(f'k - 1 = {k - 1}')
    v = k - 1
    if v in list(knut_table.keys()):
        row_knut = knut_table[v]
    else:
        x = [-2.33, -1.64, -0.674, 0, 0.674, 1.64, 2.33]
        row_knut = [v + (2*v)**0.5 * x_p + 2/3*x_p**2 - 2/3 for x_p in x]
    res = []
    if V < row_knut[0]:
        res = ['0%', knut_column[0]]
        print(f'{round(V, 2)} < {row_knut[0]}')
    for i in range(len(row_knut) - 1):
        if row_knut[i] < V and V < row_knut[i + 1]:
            print(f'{row_knut[i]} < {round(V, 2)} < {row_knut[i+1]}')
            res = [knut_column[i], knut_column[i + 1]]
    if V > row_knut[6]:
        res = [knut_column[6], '100%']
        print(f'{row_knut[6]} < {round(V, 2)}')
    print(res)
    if res == ['0%', '1%'] or res == ['99%', '100%']:
        print('Значения недостаточно случайные')
    if res == ['1%', '5%'] or res == ['95%', '99%']:
        print('Значения подозрительны')
    if res == ['5%', '25%'] or res == ['75%', '95%']:
        print('Значения почти подозрительны')
    if res == ['25%', '50%'] or res == ['50%', '75%']:
        print('Значения случайные')

    
print('Проверяемая последовательность U1 (линейный конгруэнтный генератора):', U1, '\n')
print('Критерий интервалов:')
interval_criterion(U1)
print('\n\n')
print('Проверяемая последовательность U2 (аддитивный генератор):', U2, '\n')
print('Критерий интервалов:')
interval_criterion(U2)