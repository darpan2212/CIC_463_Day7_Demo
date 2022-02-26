#!/bin/bash

cnt=0;
fruits[((cnt++))]="Mango";
fruits[((cnt++))]="Oranges";
fruits[((cnt++))]="Grapes";
fruits[((cnt++))]="Banana";

echo ${fruits[@]};

echo ${fruits[2]};

echo "Size of an array : " ${#fruits[@]};
