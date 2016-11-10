all:
	protoc --cpp_out=. demo.people.proto
#	protoc --java_out=. demo.people.proto
	g++ -g -Wall server.cc demo.people.pb.cc -o protobuf_server_demo.o -lprotobuf
	g++ -g -Wall client.cc demo.people.pb.cc -o protobuf_client_demo.o -lprotobuf
#	javac TestPeople.java com/example/tutorial/PersonProtos.java

clean:
	rm s c *~ *.class com demo.people.pb.cc demo.people.pb.h -rf
