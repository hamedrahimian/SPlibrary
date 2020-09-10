# Airlift operation scheduling problem with the first data set
#
# Solution:
# expected_cost = 249102
# flights :=
# 1 1   18.9341
# 1 2   20.1196
# 2 1    0
# 2 2    0
# thetastar = -7941.68

model airlift.ampl;
data airlift-data.ampl;

function random;
demand: random({j in Routes} (RandomDemand[j], {s in 1..NumScen} Demand[j, s]));

data;

param NumScen := 25;

param Demand (tr):
         1          2 :=
  1  927.758357 1433.626750
  2  982.516248 1149.727635
  3  961.404897 1492.817415
  4  922.915716 1250.557154
  5  986.342969 1353.935057
  6  999.134104 1226.355338
  7  970.324386 1378.148830
  8  949.613106 1200.624255
  9  991.773703 1045.317699
 10  979.491162  899.933450
 11  979.679661 1439.677972
 12  964.052640 1170.804834
 13  957.691777 1474.838349
 14  930.372603 1572.684651
 15  933.799027 1207.662826
 16  995.204085 1368.931017
 17  957.344884 1327.981462
 18  923.484318  943.075132
 19  959.026809 1226.555028
 20  946.706588 1543.605354
 21  991.897924 1243.379144
 22  956.965721 1302.917735
 23  981.616042 1122.900897
 24  957.688286 1355.585501
 25 1000.035618 1255.185201;