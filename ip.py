import ipaddress
ip = input("Give IP:")
mask = input("IP Mask:")
network= ip+'/'+mask
subnets=list(ipaddress.ip_network(network).subnets())
list1=[]
for i in subnets[0]:
    list1.append(i)

print("Subnet 1 Range:",list1[0],",",list1[-1])
list2=[]
for j in subnets[1]:
    list2.append(j)
print("Subnet 2 Range: ", list2[0],",",list2[-1])

