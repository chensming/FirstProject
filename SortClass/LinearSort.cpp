//
// Created by Dell on 2019/12/13.
//
#include <iostream>
#include <random>
#include <ctime>


using namespace std;

class myClock {
public:
    void start() {
        cout << "��ʼ��ʱ" << endl;
        t1 = clock();
    }

    void end() {
        t2 = clock();
        cout << "����ʱ�� " << (double) (t2 - t1) / 1000 << "s" << endl;
        cout << endl;
    }

private:
    long t1;
    long t2;
};


template<class T>
class LinearSort {
public:
    LinearSort();

    LinearSort(T a[], int n);

    ~LinearSort();

    void changeArray(T a[], int n);

    void BubbleSort();

    void BubbleSortBothWay();

    void InsertSort();

    void BinaryInsertSort();

    void QuickSort();

    void printArray();


private:
    T *array;
    int currentSize;

    void swap(int i, int j);
};

template<class T>
LinearSort<T>::LinearSort() {
    array = T();
    currentSize = 0;
}


template<class T>
LinearSort<T>::LinearSort(T *a, int n) {
    array = new T[n + 1];
    for (int i = 0; i < n; i++)
        array[i] = a[i];
    currentSize = n;
}

template<class T>
LinearSort<T>::~LinearSort() {
    if (array != nullptr)
        delete array;
}


template<class T>
void LinearSort<T>::changeArray(T *a, int n) {
    if (array != nullptr)
        delete array;
    array = new T[n + 1];
    for (int i = 0; i < n; i++)
        array[i] = a[i];
    currentSize = n;
}

//����
template<class T>
void LinearSort<T>::BubbleSort() {
    if (!array)
        return;
    bool exchange;
    int i, j;
    int count = 0;//ͳ����������
    for (i = 0; i < currentSize; i++) {
        exchange = false;
        for (j = 0; j < currentSize - 1; j++) {
            if (array[j] > array[j + 1]) {
                swap(j, j + 1);
                exchange = true;
            }
        }
        count++;
        if (!exchange)
            break;
    }
    cout << "���� " << count << "��BubbleSort��������������" << endl;
}

template<class T>
void LinearSort<T>::BubbleSortBothWay() {
    if (!array)
        return;
    bool exchange;
    int start[2] = {0, currentSize - 2};
    int end[2] = {currentSize - 1, -1};
    int move[2] = {1, -1};
    int count = 0; // ͳ�����������
    while (count < currentSize) {
        exchange = false;
        for (int i = start[count % 2]; i != end[count % 2]; i += move[count % 2]) {
            if (array[i] > array[i + 1]) {
                swap(i, i + 1);
                exchange = true;
            }
        }
        /*
         * cout << "count: " << count << "   ";
         * cout << "start: " << start[count % 2] << "  ";
         * cout << "end: " << end[count % 2] << endl;
         * cout << "array: ";
         * for (int i = 0; i < currentSize; i++)
         *      cout << array[i] << " ";
         *cout << endl << endl;
        */
        if (!exchange)
            break;
        count++;
    }
    cout << "���� " << count << " ��˫��BubbleSort��������������" << endl;
}


template<class T>
void LinearSort<T>::InsertSort() {
    if (!array)
        return;
    int i, j;
    //�࿪��һ���ռ䣬������array[currentSize]
    for (int i = 1; i < currentSize; i++) {
        array[currentSize] = array[i];
        j = i - 1;
        while (array[currentSize] < array[j] && j >= 0) {
            array[j + 1] = array[j];
            j--;
        }
        array[j + 1] = array[currentSize];
    }
}


template<class T>
void LinearSort<T>::BinaryInsertSort() {
    if (!array)
        return;
    int mid;
    for (int i = 1; i < currentSize; i++) {
        int low = 0, high = i - 1;
        int temp = array[i];
        while(low <= high){
            mid = (low + high) / 2;
            if(temp < array[mid])
                high = mid - 1;
            else
                low = mid + 1;
        }
        //���۰���ҵ�����ȷ����λ��Ϊhigh+1
        for(int j = i - 1; j >= high + 1; j--)
            array[j + 1] = array[j];
        //����ȷλ�ò��븴�Ƴ����Ĵ�����Ԫ��
        array[high + 1] = temp;
    }
}


template<class T>
void LinearSort<T>::QuickSort() {
    if (!array)
        return;
}


template<class T>
void LinearSort<T>::swap(int i, int j) {
    T temp = array[i];
    array[i] = array[j];
    array[j] = temp;
}

template<class T>
void LinearSort<T>::printArray() {
    for (int i = 0; i < currentSize; i++)
        cout << array[i] << " ";
    cout << endl;
}


int main() {
    int test1[10] = {9, 8, 3, 7, 1, 6, 0, 5, 2, 4};
    int test2[10] = {9, 1, 2, 3, 4, 5, 6, 7, 8, 0};
    int test3[10];
    for (int i = 0; i < 10; i++)
        test3[i] = (int) (rand() % 1000);

    LinearSort<int> linear1;
    linear1.changeArray(test1, 10);
    linear1.BubbleSort();
    linear1.printArray();

    cout << endl;
    linear1.changeArray(test1, 10);
    linear1.InsertSort();
    linear1.printArray();

    cout << endl;
    linear1.changeArray(test1, 10);
    linear1.BinaryInsertSort();
    linear1.printArray();




//    int temp[2000];
//    for(int i = 0; i < 2000; i++)
//        temp[i] = (int)(rand() % 1000);
//    myClock a;
//    LinearSort<int> linear1(temp, 2000);
//    a.start();
//    linear1.BubbleSort();
//    a.end();
//    linear1.printArray();
//
//    linear1.changeArray(test3, 2000);
//    a.start();
//    linear1.BubbleSortBothWay();
//    a.end();
//    linear1.printArray();

//    system("pause");
}