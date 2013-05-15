def xyz_there(str):
	return str.count("xyz") > str.count(".xyz")

print "xyz_there('abcxyz') returns ", xyz_there('abcxyz')
print "xyz_there('abc.xyz') returns ", xyz_there('abc.xyz')
print "xyz_there('xyz.abc') returns ", xyz_there('xyz.abc')
print "xyz_there('abcabc') returns ", xyz_there('abcabc')
print "xyz_there('abc.xyzxyz') returns ", xyz_there('abc.xyzxyz')
print "xyz_there('1.xyz.xyz2.xyz') returns ", xyz_there('1.xyz.xyz2.xyz')