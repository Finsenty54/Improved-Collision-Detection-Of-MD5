CC := g++
CFLAGS  += -O3

objects = Main.o CollisionDetectionAlgorithm.o

collisionDetect : $(objects)
	$(CC) $(CFLAGS) -o  collisionDetect ${objects}

Main.o: CollisionDetectionAlgorithm.h
	$(CC) $(CFLAGS) -c -o $@ Main.cpp
CollisionDetectionAlgorithm.o: CollisionDetectionAlgorithm.h
	$(CC) $(CFLAGS) -c -o $@ CollisionDetectionAlgorithm.cpp

.PHONY : clean
clean : 
	rm  collisionDetect $(objects)