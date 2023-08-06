--防开源

--辅助配置
lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local cKG=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cKG)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cKG) return a[1].."开启成功" else lde.srg(cKG) return a[1].."开启失败!!!" end end
function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function readValue(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end local sod,so_bss,xdd='libAppPlayJNI.so','libAppPlayJNI.so:bss',gg.getRangesList("libAppPlayJNI.so:bss") 
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end function getso(So_name) return gg.getRangesList(So_name)[1].start end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2]   if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end  for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then   gg.toast("\n注入"..#data.."条数据")  local t = {} local base = Search[1][2] for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base t[#t+1] = {}  t[#t].address = data[i] + offset   t[#t].flags = Type   t[#t].value = w[1] if (w[3] == true) then local item = {}  item[#item+1] = t[#t] item[#item].freeze = true  gg.addListItems(item) end  end   end gg.setValues(t) else gg.toast("\n开启失败", false) return false end else gg.toast("\n开启失败")return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n注入" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end lde={} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function so(a,b,c) local cSY=gg.getRanges()  lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3] then b[p][3]=a[4] end lode[p][i].flags=b[p][3] end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2] then db[2]=db[1] end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY) if p>11 then p=11 end return a[1].."开启失败" end count=lope lope={} end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3] then c[i][3]=a[4] end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true else if c[i][4]==2 then lobe[#lobe].freeze=false end end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败" end end    D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then   gg.toast("搜索到"..#data.."条数据") local t = {}   local base = Search[1][2]   for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base   t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1]   if (w[3] == true) then local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast("not found", false)return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,已注入" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {} local _t local _S = nil if ti_bit then _t = 32 else	_t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then	_S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then	S[_].value = S[_].value & 0xFFFFFFFF	end	t[#t + 1] = {}	t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end	_S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S	end	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end recover=gg.getResults(100000) function AppSearch(SSYR,XGNR,BCNR,notWrite)  gg.clearResults()  gg.setRanges(SSYR["M"])  gg.searchNumber(SSYR[1]["mv"],SSYR[1]["lx"],false,gg.SIGN_EQUAL,(SSYR[1]["addr"] or nil),(SSYR[1]["toAddr"] or nil))  jg=gg.getResults(100000)  local base=(SSYR[1]["offs"] or 0)  local data={}  if #jg==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  for i=1,#jg do jg[i].Useful=true  end for k=2,#SSYR do  if not SSYR[k] then break  end  local content={}  local offset=SSYR[k]["offs"]-base  local value=SSYR[k]["sv"]  local type=SSYR[k]["lx"] local to=(SSYR[k]["to"] or value)  local num={}  if to<value then to,value=value,to  end  for i=1,#jg do if jg[i].Useful==true then  table.insert(content,{}) content[#content].address=jg[i].address+offset content[#content].flags=type num[#num+1]=i end end if #content==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or "")) gg.loadResults(recover) return nil end content=gg.getValues(content)for i,v in pairs(content) do if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then jg[num[i]].Useful=false end end end for j=1,#jg do  if jg[j].Useful==true then data[#data+1]=jg[j].address  end end  if #data==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  if notWrite==true then gg.loadResults(recover)return data  end  if XGNR then  local write={}  for i=1,#data do for j=1,#XGNR do  write[#write+1]={} write[#write].address=data[i]+(XGNR[j][2]-base) write[#write].flags=XGNR[j][3]  write[#write].value=XGNR[j][1]  write[#write].freeze=XGNR[j][4]  write[#write].name=XGNR[j][5] or nil  if write[#write].freeze==true then gg.addListItems({[1]=write[#write]}) else gg.setValues({[1]=write[#write]})end if XGNR[j][6]==true then gg.addListItems({[1]=write[#write]})end end end end if BCNR then local bc={}for j=1,#data do for i=1,#BCNR do bc[#bc+1]={}bc[#bc].address=data[j]+(BCNR[i][1]-base)bc[#bc].flags=BCNR[i][2]bc[#bc].name=BCNR[i][3]end end gg.addListItems(bc)end gg.toast("功能名:"..(SSYR.name or "无").."\n".."[修改成功]")gg.loadResults(recover)end    function so(a,b,c) local cSY=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败!!!" end end
local zb={}local getsl=gg.getResultCount function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end function readValue(addr, type)local t = {}t[1] = {}t[1].address = addr t[1].flags = type return gg.getValues(t)[1].value end function QC(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end
function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n 共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
 function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end 
 function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败ༀ') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '情书丢失ༀ') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '封情书') else gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败，情书不见了ༀ') end end end end --[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end --[[配置2]]function jz(py,a,xgsz) flags=a value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,a,xgsz) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "丢失情书") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功接受情书" .. xgsl .. "封") else gg.toast(qmnb[2]["name"] .. "爱失败了") end end end end
function Ax(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启成功，注入3条数据!")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 3 条数据")else gg.toast(qmnbn.."开启失败，共注入3条数据!8")end end end
function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启成功&spd=5&source=wise")else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)          else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function Xilst() local iihj = ilht+1 gg.setRanges(4) local dataType = 4 local tb1 = {{ilht, 0},{iihj, 0x400},} local tb2 = {{  0 }, } SearchWrite(tb1, tb2, dataType) sl=gg.getResultCount() jg=gg.getResults(100) for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = ilht}}) end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)           else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end  
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
--获取迷你号
dl9 = io.open("/storage/emulated/0/迷你号配置文件.txt", "rb")  if dl9 == nil then dl9=0 else
dl9 = io.open("/storage/emulated/0/迷你号配置文件.txt","r"):read("*a") end
dI0=gg.prompt({"请输入你的迷你号"},{[1]=dl9},{"number"})   
io.open("/storage/emulated/0/迷你号配置文件.txt","w"):write(dI0[1]):close() 
a = io.open("/storage/emulated/0/迷你号配置文件.txt","r"):read("*a") 
--防闪
function XGBase(Address,AFV)
local address=0
for index,offset in ipairs(Address)do if index==1 then address=offset else 
address=gg.getValues({{address=address+offset,flags=4}})[1].value end end
local Value,Freeze={},{}for index,value in ipairs(AFV)do
local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
if value[4]then Freeze[#Freeze+1]=VALUE else Value[#Value+1]=VALUE
end end gg.setValues(Value)gg.addListItems(Freeze)end
XGBase({gg.getRangesList("libtersafe2.so")[3].start},
{{"0",4,0x4E960,false},})
XGBase({gg.getRangesList("libtersafe2.so")[3].start},
{{"0",4,0x4EE4C,false},})
XGBase({gg.getRangesList("libtersafe2.so:bss")[1].start},
{{"0",4,0x1380,false},})
local t = {"libtersafe2.so", "Cd"}
local tt = {0x4E960}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
local t = {"libtersafe2.so", "Cd"}
local tt = {0x4EE48}
local ttt = S_Pointer(t, tt, true)
gg.getValues({{address = ttt, flags = 4, value = 0}})
gg.toast("防闪退开启成功")
XZSJ = os.date("%Y年%m月%d日%H时%M分%S秒")
bqt={"🍬","🧸","💔","🍁","🏅","💫","🎄","🐒","♓","⭐","🍥","🎡","💙","🌀","🌴","🐰","❤️","💘",}
--以上为配置小白不懂勿动

function Main()
local sjbq=bqt[math.random(1,#bqt)]
SN = gg.choice({
   sjbq..'️𒅒️  房 主 科 技  𒅒️'..sjbq,
   sjbq..'️𒅒️  联 机 科 技  𒅒️️️'..sjbq,
   sjbq..'️𒅒️  炸 图 科 技  𒅒️️️️'..sjbq,
   sjbq..'️𒅒️  狙 击 科 技  𒅒️️'..sjbq,
   sjbq..'𒅒️  音 乐 科 技  𒅒️️️'..sjbq,
   sjbq..'️𒅒️  特 殊 科 技  𒅒️️️'..sjbq,
   sjbq..'️𒅒️  关 闭 科 技  𒅒️️'..sjbq,
},2018,os.date("焱晨辅助当前时间"..XZSJ.."\n作者:KG.焱晨 复活作者:神梦"))
gg.toast("💖作者:焱晨大帅哥💖")
if SN==1 then Main1() end
if SN==2 then Main2() end
if SN==3 then Main3() end
if SN==4 then Main4() end
if SN==5 then Main5() end
if SN==6 then Main6() end
if SN==7 then Exit() end
FX1=0 end


function Main1()  
SN = gg.multiChoice({
"️🐒创 造 背 包🐒",--1
"️🐒飞 行 按 钮🐒",--2
"️🐒秒 挖 方 块🐒",--3
"️🐒彩蛋枪强 化🐒",--4
"️🐒一 格 附 魔🐒",--5
"️🐒添 加 物 品🐒",--6
"️🐒修 改 分 数🐒",--7
"️🐒图 鉴 解 锁🐒",--8
"️🐒刷 取 星 星🐒",--9
"️🐒枪 改 子 弹🐒",--10
"️🐒添 加 坐 骑🐒",--11
"️🐒刷 取 勋 章🐒",--12
"️🐒无 限 物 品🐒",--13
"️🐒开 大 房 间🐒",--14
"️🐒修 改 宠 物🐒",--15
"️🐒人 物 穿 墙🐒",--16
"️🐒万 炮 齐 发🐒",--17
"️🐒书 台 取 物🐒",--18
"️🐒死 亡 移 动🐒",--19
"️🐒强化能量剑🐒",--20
"️🐒改泡泡球击中生物的状态🐒",--21
"️🎡返 回 主 页🎡",--22
 }, nil, "规则不被打破你就是弱智，向前看科技的力量！️️")

gg.toast("宝，我不会离开你的️🥰")
if SN == nil then else
if SN[1]==true then     a1() end
if SN[2]==true then     a2() end
if SN[3]==true then     a3() end
if SN[4]==true then     a4() end
if SN[5]==true then     a5() end
if SN[6]==true then     a6() end
if SN[7]==true then     a7() end
if SN[8]==true then     a8() end
if SN[9]==true then     a9() end
if SN[10]==true then     a10() end
if SN[11]==true then     a11() end
if SN[12]==true then     a12() end
if SN[13]==true then     a13() end
if SN[14]==true then     a14() end
if SN[15]==true then     a15() end
if SN[16]==true then     a16() end
if SN[17]==true then     a17() end
if SN[18]==true then     a18() end
if SN[19]==true then     a19() end
if SN[20]==true then     a20() end
if SN[21]==true then     a21() end
if SN[22]==true then     Main() end
end
FX1=0 end


function a1()
qmnb=
{
{['memory']=4},
{['name']='创造背包'},
{['value']=1701987110, ['type']=4},
{['lv']=1113945185,['offset']=4, ['type']=4},
}
qmxg=
{
{['value']=257,['offset']=260,['type']=4},
}
xqmnb(qmnb,qmxg)
end



function a2()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
gg.toast(so({"伪飞行",-1020002304,4,4},{{-1046478848,-4,4}},{{257,0x38,4,1}}))
 elseif  F== 2 then
gg.toast(so({"伪飞行",-1020002304,4,4},{{-1046478848,-4,4}},{{256,0x38,4,1}}))
end
end


function a3()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function a4()
local b = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"},{[1]=12299},{[1]="number"})
if not b then return end
gg.toast(so({"彩弹枪强化",434259848432382,4,32},{{1,-0xC,4}},{{b[1],-0x8,4}}))
end



function a5()
qa1 = gg.choice({
"️🏁第一格武器附魔🏁",--1
"️🏁第一格工具附魔🏁",--2
"️🏁第一格弓箭附魔🏁",--3
"️🏁第一格装备附魔🏁",--4
"️🏁第一格自定义附魔🏁",--5
"️🎡返 回 主 页🎡",},2018,os.date("🏁第一格附魔🏁"))
if qa1 ==1 then ww1() end
if qa1 ==2 then ww2() end
if qa1 ==3 then ww3() end
if qa1 ==4 then ww4() end
if qa1 ==5 then ww5() end
if qa1 ==6 then Main() end
XGCK=-1
end

function ww1()
gg.toast(so({"武器附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{605,16,4,1},{1005,20,4,1},{1105,24,4,1},{705,28,4,1}}))
end

function ww2()
gg.toast(so({"工具附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2505,12,4,1},{2603,16,4,1},{2401,20,4,1},{1505,24,4,1},{1105,28,4,1}}))
end

function ww3()
gg.toast(so({"弓箭附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{1005,16,4,1},{905,20,4,1},{1305,24,4,1},{1405,28,4,1}}))
end

function ww4()
gg.toast(so({"装备附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2205,12,4,1},{1805,16,4,1},{1705,20,4,1},{1605,24,4,1},{2305,28,4,1}}))
end

function ww5()
fm1 = gg.prompt({"第一个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"第二个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"第三个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"第四个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"第五个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.toast(so({"自定义附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{fm1,12,4,1},{fm2,16,4,1},{fm3,20,4,1},{fm4,24,4,1},{fm5,28,4,1}}))
end



function a6() 
gg.toast("添加物品开启成功")end 



function a7()
xx= gg.choice({
    "️🚧️ 红 队 🚧",
    "️🚧 蓝 队 🚧",
    "️🚧 绿 队 🚧",
    "️🚧 黄 队 🚧",
    "️🚧 橙 队 🚧",    
    "️🚧 紫 队 🚧",    
    "️🎡返 回 主 页🎡",},2018,os.date("🚧改队伍分数🚧️"))
if xx==1 then  fs1() end
if xx==2 then  fs2() end
if xx==3 then  fs3() end
if xx==4 then  fs4() end
if xx==5 then  fs5() end
if xx==6 then  fs6() end
if xx==7 then  Main() end
XGCK=-1 end
function fs1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function fs2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("修改成功")
	 gg.clearResults()
end
function fs3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
local tb2 = {{mn2, -40  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end



function a8()
SY1 = gg.choice({
     "🍋解锁全物品🍋",--1
	 "🍋解锁荧光弹弓🍋", --2
     "🍋解锁圆球炸弹🍋", --3
     "🍋解锁冰锥🍋", --4
     "🍋解锁熔岩球🍋", --5
     "🍋解锁脉冲弓🍋", --6
     "🍋解锁黑龙熔岩球🍋", --7
     "🍋解锁混乱熔岩球🍋", --8
     "🍋解锁反光镜🍋", --9
     "🍋解锁火箭背包🍋", --10
     "🍋解锁公主床🍋", --11
     "🍋解锁坚冰🍋", --12
     "🍋解锁钢板🍋", --13
     "🍋解锁金铁门🍋", --14
     "🍋解锁白杨木门🍋", --15
     "🍋解锁弩🍋",--16
     "🍋解锁火箭筒🍋",--17
   	 "🎡返 回 主 页🎡",--18
 }, nil, "我这一次终究还是来的太迟，不该出现再插上一点说辞")
if SY1 == 1 then l1() end
if SY1 == 2 then l2() end
if SY1 == 3 then l3() end
if SY1 == 4 then l4() end
if SY1 == 5 then l5() end
if SY1 == 6 then l6() end
if SY1 == 7 then l7() end
if SY1 == 8 then l8() end
if SY1 == 9 then l9() end
if SY1 == 10 then l10() end
if SY1 == 11 then l11() end
if SY1 == 12 then l12() end
if SY1 == 13 then l13() end
if SY1 == 14 then l14() end
if SY1 == 15 then l15() end
if SY1 == 16 then l16() end
if SY1 == 17 then l17() end
if SY1 == 18 then Main() end

GLWW=-1
end


function l1()
qmnb=
{
{['memory']=4},
{['name']='解锁全物品'},
{['value']=10000, ['type']=4},
{['lv']=200,['offset']=160, ['type']=4},
}
qmxg=
{
{['value']=0,['offset']=-4,['type']=4},
}
xqmnb(qmnb,qmxg)
end



function l2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12589;136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【荧光弹弓】出来测试一下！")
	 gg.clearResults()
end

function l3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15506;137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【圆球爆弹】出来测试一下！")
	 gg.clearResults()
end

function l4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15507;138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【冰锥】出来测试一下！")
	 gg.clearResults()
end

function l5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15508;139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12291;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【脉冲弓】出来测试一下！")
	 gg.clearResults()
end

function l7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15519;141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【黑龙熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15520;142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【混乱熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1060;143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【反射镜】出来测试一下！")
	 gg.clearResults()
end

function l10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("火箭背包解锁成功")
	 gg.clearResults()
end

function l11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("公主床解锁成功")
	 gg.clearResults()
end

function l12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l16()
 gg.clearResults()
gg.searchNumber('12283;61', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('61', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弩解锁成功！')
end

function l17()
 gg.clearResults()
gg.searchNumber('12284;62', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('62', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('火箭筒解锁成功！')
end


function a9()
SN = gg.multiChoice({
	 "️🧊野人掉999+星星🧊",
	 "️🧊熔岩人掉999+星星🧊",
	 "️🧊墩墩掉999+星星🧊",
	 "️🧊沃沃兽掉999+星星🧊",
	 "️🧊嘟嘟鸟掉999+星星🧊",
	 "️🧊狐狸掉999+星星🧊",
	 "️🎡返 回 主 页🎡",
}, nil, "🧊打死功能里面的指定生物即可掉999+星星🧊️")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS21()
end
if SN[7]==true then
	 Main()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打野人一下试试")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打熔岩巨人一下试试")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打墩墩一下试试")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打沃沃兽一下试试")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打嘟嘟鸟一下试试")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打狐狸一下试试")
	 gg.clearResults()
end



function a10()
F = gg.alert("🔥请选择🔥","🍁狙击🍁","🍁️冲锋🍁️️","🎾重机🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
A4 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501"}
,{[1]=12299},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='狙击枪改子弹'},
{['value']=15004, ['type']=4},
{['lv']=15003,['offset']=792, ['type']=4},
}
qmxg=
{
{['value']=A4,['offset']=152,['type']=4},
}
xqmnb(qmnb,qmxg)
end
if   F==2   then
A5 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501"}
,{[1]=12299},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='冲锋枪改子弹'},
{['value']=15000, ['type']=4},
{['lv']=15003,['offset']=792, ['type']=4},
}
qmxg=
{
{['value']=A5,['offset']=152,['type']=4},
}
xqmnb(qmnb,qmxg)
end
if    F==3  then
A6 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501"}
,{[1]=12299},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='重机枪改子弹'},
{['value']=15005, ['type']=4},
{['lv']=15003,['offset']=792, ['type']=4},
}
qmxg=
{
{['value']=A6,['offset']=152,['type']=4},
}
xqmnb(qmnb,qmxg)
end end





function a11()
o2= gg.choice({
      "️𒅒️🧊化  石  龙𒅒️🧊",--1
      "️𒅒️🧊机 灵 飞 鼠𒅒️🧊",--2
      "️𒅒️🧊瑞 祥 麒 麟𒅒️🧊",--3
      "️𒅒️🧊陆  行  鸟𒅒️🧊",--4
      "️𒅒️🧊盛 典 白 象𒅒️🧊",--5   
      "️𒅒️🧊超 能 海 豹𒅒️🧊",--6
      "️𒅒️🧊舞 狮 猫 猫𒅒️🧊",--7
      "️𒅒️🧊星 河 天 马𒅒️🧊",--8
      "️𒅒️🧊桃 香 扇 缘𒅒️🧊",--9
      "️𒅒️🧊深 渊 咆 哮𒅒️🧊",--10
      "️𒅒️🧊皎 月 仙 宫𒅒️🧊",--11
      "️𒅒️🧊冰 雪 传 说𒅒️🧊",--12  
      "️𒅒️🧊缤 纷 幻 想𒅒️🧊",--13
      "️𒅒️🧊福 运 哞 哞𒅒️🧊",--14
      "️𒅒️🧊浮 游 山 海𒅒️🧊",--15
      "️𒅒️🧊镜 花 水 月𒅒️🧊",--16
      "️𒅒️🧊鹿 王 本 身𒅒️🧊",--17 
      "️️𒅒️🧊南  瓜  车𒅒️🧊",--18 
      "️𒅒️🧊竹  蜻  蜓𒅒️🧊",--19   
      "️𒅒️🧊曦 光 绘 梦𒅒️🧊",--20  
      "️𒅒️🧊裂 空 机 甲𒅒️🧊",--21
      "️𒅒️🧊星 河 机 甲𒅒️🧊",--22  
      "️𒅒️🧊环 海 诺 诺𒅒️🧊",--23 
      "️𒅒️🧊尼 东 若 若𒅒️🧊",--24 
      "️𒅒️🧊虚 空 龙 祖𒅒️🧊",--25  
      "️𒅒️🧊繁 花 夜 明𒅒️🧊",--26 
      "️𒅒️🧊星 月 魔 毯𒅒️🧊",--27
      "️𒅒️🧊千  机  隼𒅒️🧊",--28
      "️𒅒️🧊无 限 电 音𒅒️🧊",--29
      "️𒅒️🧊云 梦 花 舞𒅒️🧊",--30
      "️𒅒️🧊醉  花  阴𒅒️🧊",--31
      "️𒅒️🧊  旺   财 𒅒️🧊",--32
      "️𒅒️🧊帝 皇 战 龙𒅒️🧊",--33
      "️𒅒️🧊虎 虎 生 威𒅒️🧊",--34
      "️𒅒️🧊春 风 燕 语𒅒️🧊",--35
      "️𒅒️🧊绘  江  山𒅒️🧊",--36
      "️𒅒️🧊米  奇  拉𒅒️🧊",--37
      "️𒅒️🧊帝  皇  侠𒅒️🧊",--38
      "️𒅒️🧊揽 梦 之 翼𒅒️🧊",--39
      "️𒅒️🧊冰 霜 绽 放𒅒️🧊",--40
      "️𒅒️🧊福 兔 临 门𒅒️🧊",--41
      "️𒅒️🧊天 幕 星 龙𒅒️🧊",--42
      "️𒅒️🧊迷你变形车𒅒️🧊",--43
      "️𒅒️🧊羽 辉 之 钥𒅒️🧊",--44
      "️𒅒️🧊轩 辕 圣 剑𒅒️🧊",--45
      "️𒅒️🧊赤 颜 幻 姬𒅒️🧊",--46
      "️𒅒️🧊梦 幻 时 光𒅒️🧊",--47
      "️ 𒅒️🧊 韶   光 𒅒️🧊 ",--48
      "️𒅒️🧊沙 漠 之 舟𒅒️🧊",--49
      "️𒅒️🧊风 铃 兰 语𒅒️🧊",--50
      "️𒅒️🧊月  中  桂𒅒️🧊",--51
      "️𒅒️🧊朋克猪燃燃𒅒️🧊",--52
      "️𒅒️🧊极 限 枫 动𒅒️🧊",--53
      "️𒅒️🧊庆 典 之 书𒅒️🧊",--54
      "️𒅒️🧊菲 丽 茜 亚𒅒️🧊",--55
      "️𒅒️🧊  野   人  𒅒️🧊",--56
      "️𒅒️🧊咕 噜 兽𒅒️🧊",--57
      "️𒅒️🧊香 瑶 粽𒅒️🧊",--58
      "️𒅒️🧊路 障𒅒️🧊",--59
      "️𒅒️🧊山 川 云 海𒅒️🧊",--60
      "️𒅒️🧊自定义添加𒅒️🧊",--61
       "🎡返 回 主 页🎡️",},2018,os.date("𒅒️🧊请先点击坐骑按钮界面再召唤没有点击坐骑界面将无法召唤𒅒️🧊"))
if o2==1 then o=3431 o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4526 o4() end
if o2==24 then o=4529 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=4545 o4() end
if o2==29 then o=4548 o4() end
if o2==30 then o=4551 o4() end
if o2==31 then o=4554 o4() end
if o2==32 then o=4556 o4() end
if o2==33 then o=4562 o4() end
if o2==34 then o=4566 o4() end
if o2==35 then o=4574 o4() end
if o2==36 then o=4581 o4() end
if o2==37 then o=4568 o4() end
if o2==38 then o=4569 o4() end
if o2==39 then o=4634 o4() end
if o2==40 then o=4637 o4() end
if o2==41 then o=4629 o4() end
if o2==42 then o=4621 o4() end
if o2==43 then o=4644 o4() end
if o2==44 then o=4585 o4() end
if o2==45 then o=4592 o4() end
if o2==46 then o=4588 o4() end
if o2==47 then o=4598 o4() end
if o2==48 then o=4596 o4() end
if o2==49 then o=4608 o4() end
if o2==50 then o=4603 o4() end
if o2==51 then o=4616 o4() end
if o2==52 then o=4612 o4() end
if o2==53 then o=4619 o4() end
if o2==54 then o=4646 o4() end
if o2==55 then o=4640 o4() end
if o2==56 then o=4638 o4() end
if o2==57 then o=4648 o4() end
if o2==58 then o=4650 o4() end
if o2==59 then o=4652 o4() end
if o2==60 then o=4654 o4() end
if o2==61 then o5() end
if o2==62 then Main() end
XGCK=-1 end
function o4()
gg.toast(so({"修改坐骑",1050253722,4,4},{{1127481344,-0x138,4},{1106247680,-0x118,4},{1065353216,-0x140,4}},{{o,-0xC,4,1},{257,-0xDC,4,1}}))
  gg.toast("召唤坐骑开启成功")
end
function o5()
XG = gg.prompt({"请输入坐骑召唤代码"}
,{[1]=""},{[1]="number"})[1]
gg.toast(so({"修改坐骑",1050253722,4,4},{{1127481344,-0x138,4},{1106247680,-0x118,4},{1065353216,-0x140,4}},{{XG,-0xC,4,1},{257,-0xDC,4,1}}))
end



function a12()
SN = gg.multiChoice({
"️🍃刷茁壮成长勋章🍃",
"️️🍃刷华丽变身勋章🍃",
"️️🍃刷强大如我勋章🍃",
"️🎡返 回 主 页🎡",
 }, nil, "🍃️刷勋章🍃️️️️")
if SN == nil then else
if SN[1]==true then     zs1() end
if SN[2]==true then     zs2() end
if SN[3]==true then     zs3() end
if SN[4]==true then     Main() end
end
XGCK=-1 end

function zs1()
SN = gg.choice({
	 "️🌈️1级家园改25级🌈️",
	 "️️🌈2级家园改25级🌈️",
	 "️🌈3级家园改25级🌈",
	 "️🌈4级家园改25级🌈",
	 "️🌈5级家园改25级🌈",
	 "️🌈6级家园改25级🌈",
	 "️🌈7级家园改25级🌈",
	 "️🎡返 回 主 页🎡",
}, nil, "🌈刷茁壮成长勋章🌈")
if SN==1 then
	 HS99()
end
if SN==2 then
	 HS999()
end
if SN==3 then
	 HS9999()
end
if SN==4 then
	 HS99999()
end
if SN==5 then
	 HS999999()
end
if SN==6 then
	 HS9999999()
end
if SN==7 then
	 HS99999999()
end
if SN==8 then
	 Main()
end
FX1=0
FX2=0
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS999()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



function HS9999()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99999()
	  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS999999()
	  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS9999999()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99999999()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



function zs2()
vip= gg.prompt({"输入你拥有的一个皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝     140秋果     146璎落     147雷光    148凛冬"}
,{[1]=148},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "刷华丽变身勋章"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4}}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},}
xqmnb(qmnb)
end



function zs3()
qmnb = {
{["memory"] = 4},
{["name"] = "刷强大如我勋章"},
{["value"] =1080360960, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4}}
qmxg = {
{["value"] = 500, ["offset"] = -20,["type"] = 64}}
xqmnb(qmnb)
end



function a13()
    gg.sleep(900)
    gg.toast("请保持第一格没有物品")
gg.toast(so({"物品复刻",945804460,4,4},{{1000,-4,4},{-1,4,4}},{{945804564,0,4,1}}))  
end



function a14()
local a=gg.prompt({'输入1～40人房间人数,开启此功能后点击开6人房间'},{'22'},{'number'})
if not a then return end
if a then
so({'大房间',1078198272,4,4},{{1077805056,-0x10},{1077149696,-0x20},{1076101120,-0x30},{1075052544,-0x50}},{{a[1],-0x44,64}})
end
end

function a15()
local a = gg.prompt({'请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001'},{[1]=3512},{[1]='number'})[1]
so({'修改宠物',10001,4,4},{{1,4,4}},{{a,8,4}})
end



function a16()
F = gg.alert("🐰请选择｛开 关｝🐰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end end



function a17()
gg.toast(so({"万炮齐发",12284,4},{{12285,0xB0,4},{12284,-4,4}},{{1065353216,0x138,4},{999,0xB4,4,1}}))gg.toast(so({"万炮齐发",-1593466806,4,2},{{759648338,-176,4}},{{-19417700690,2,2}}))gg.toast("万炮齐发开启成功")end



function a18()
UIY=gg.prompt({"输入你要的物品的代码"},{""},{"number"})
if UIY then 
gg.toast(so({("书台取物"),4628011567076605952,4,32},{{4667716031467225088,200,32}},{{UIY[1],120,64,1},{0,0x140,64,1}}))
gg.toast("书台取物开启成功")
end
end



function a19()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("4,812,096,205,058,211,840", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4,812,096,205,058,211,840", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(200)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
  end
  gg.toast("死亡移动开启成功")
  gg.clearResults()
end



function a20()
local qmnb=
{
{['memory']=4},
{['name']='能量剑最大攻击力'},
{['value']=12005, ['type']=2},
{['lv']=11329,['offset']=-684, ['type']=2},
}
local qmxg=
{
{['value']=9999,['offset']=50,['type']=2},
}
xqmnb(qmnb,qmxg)

local qmnb=
{
{['memory']=4},
{['name']='能量剑无冷却'},
{['value']=104.0, ['type']=16},
{['lv']=0.6000000238418579,['offset']=-732, ['type']=16},
}
local qmxg=
{
{['value']=0.0,['offset']=-92,['type']=16},
}
xqmnb(qmnb,qmxg)

	 gg.clearResults()
gg.searchNumber(":能量剑", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":#R神剑", gg.TYPE_BYTE)
gg.processResume()
gg.toast("能量剑变神剑开启成功")
gg.sleep(2000)
gg.toast("强化能量剑开启成功")end



function a21()
XGZT = gg.choice({
"🍣着 火 5 级🍣",
"🍣中 毒 3 级🍣",
"🍣冰 冻 3 级🍣",
"🍣禁 锢 1 级🍣",
"🍣冰 冻 2 级🍣",
"🍣燃 烧 4 级🍣",
"🍣流 血 5 级🍣",
"🍣突 发 恶 疾🍣",
"🎡返 回 主 页🎡",
},2018,os.date("🍣改泡泡球击中生物的状态🍣"))
if XGZT==1 then ZTDM=33005 ZTXG() end
if XGZT==2 then ZTDM=34003 ZTXG() end
if XGZT==3 then ZTDM=45003 ZTXG() end
if XGZT==4 then ZTDM=46001 ZTXG() end
if XGZT==5 then ZTDM=45002 ZTXG() end
if XGZT==6 then ZTDM=200004 ZTXG() end
if XGZT==7 then ZTDM=1020005 ZTXG() end
if XGZT==8 then ZTDM=1021001 ZTXG() end
if XGZT==9 then Main() end XGCK=-1 end
function ZTXG()
qmnb=
{
{['memory']=4},
{['name']='改泡泡球击中生物的状态'},
{['value']=12285, ['type']=4},
{['lv']=1084227584,['offset']=248, ['type']=4},
}
qmxg=
{
{['value']=ZTDM,['offset']=412,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
end



function Main2()  
SN = gg.multiChoice({
"️🐰伪 装 房 主🐰",--1
"️🐰连 跳 飞 天🐰",--2
"️🐰吸 全 房 人🐰",--3
"️🐰坐 标 传 送🐰",--4
"️🐰喷 漆 改 物🐰",--5
"️🐰修 改 速 度🐰",--6
"️🐰修 改 跳 跃🐰",--7
"️🐰平 飞 无 检🐰",--8
"️🐰金 稿 秒 蓄🐰",--9
"️🐰全 局 速 度🐰",--10
"️🐰编 辑 香 瓜🐰",--11
"️🐰修 改 模 式🐰",--12
"️🐰编 辑 按 钮🐰",--13
"️🐰人 物 特 效🐰",--14
"️🐰蓝 足 模 式🐰",--15
"️🐰杀 戳 环 绕🐰",--16
"️🐰强 改 视 角🐰",--17
"️🐰修 改 天 空🐰",--18
"️🎡返 回 主 页🎡",--19
 }, nil, "再也回不到从前了……️️")
gg.toast("我曾经也奋斗过为什么没人理解💔")
if SN == nil then else
if SN[1]==true then     b1() end
if SN[2]==true then     b2() end
if SN[3]==true then     b3() end
if SN[4]==true then     b4() end
if SN[5]==true then     b5() end
if SN[6]==true then     b6() end
if SN[7]==true then     b7() end
if SN[8]==true then     b8() end
if SN[9]==true then     b9() end
if SN[10]==true then     b10() end
if SN[11]==true then     b11() end
if SN[12]==true then     b12() end
if SN[13]==true then     b13() end
if SN[14]==true then     b14() end
if SN[15]==true then     b15() end
if SN[16]==true then     b16() end
if SN[17]==true then     b17() end
if SN[18]==true then     b18() end
if SN[19]==true then     Main() end
end
FX1=0 end






function b1()  
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xE9AB0, 0x880}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 3, freeze = true}})
gg.toast("伪房主开启成功")end




function b2()
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xA3560, 0x5A0, 0x94}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
gg.toast("连跳飞天开启成功")end



function b3()  
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end



function b4()  
local a=gg.prompt({'Y轴(竖)️','X轴(横)','高度'})
  if not a then gg.alert('请全部填写',false)
    return nil
  end
  if a[1]~='' and a[2]~='' then if a[3]~='' then
      a[1] = a[1]..'00'
      a[2] = a[2]..'00'
      a[3] = a[3]..'00'
so({'传送',944892805240,4,32},{{220,4,4},{180,-8,4}},{{a[1],12,4},{a[2],20,4},{a[3],16,4}})
    end
  end
end



function b5()  
AsD= gg.choice({
    "𒅒二 胡𒅒",--1
    "𒅒古 筝𒅒",---2
    "𒅒唢 呐𒅒",--3
    "𒅒琵 琶𒅒",--4
    "𒅒笛 子𒅒", --5   
    "𒅒鼓 子𒅒",--6
    "𒅒篮 球 衣𒅒",--7
    "𒅒足 球 衣𒅒",--8
    "𒅒能 量 剑𒅒",--9
    "𒅒编 辑 器𒅒",--10
    "𒅒黑 龙 球𒅒",--11
    "𒅒破坏方块𒅒",--12
    "𒅒自定义改𒅒",--13
    "🎡返 回 主 页𒅒",},2018,os.date("𒅒喷 漆 改 物𒅒"))
if AsD==1 then QWER=11900 ZZZZqq() end
if AsD==2 then QWER=11905 ZZZZqq() end
if AsD==3 then QWER=11906 ZZZZqq() end
if AsD==4 then QWER=11907 ZZZZqq() end
if AsD==5 then QWER=11908 ZZZZqq() end
if AsD==6 then QWER=11909 ZZZZqq() end
if AsD==7 then QWER=12820 ZZZZqq() end
if AsD==8 then QWER=12821 ZZZZqq() end
if AsD==9 then QWER=12005 ZZZZqq() end
if AsD==10 then QWER=10500 ZZZZqq()end
if AsD==11 then QWER=15056 ZZZZqq() end
if AsD==12 then QWER=11551 ZZZZqq() end
if AsD==13 then gp1() end
if AsD==14 then Main() end
XGCK=-1 end

function ZZZZqq()
gg.toast(so({"喷漆改物",12240,4,4},{{200,-0x1B0,4},{2,0x8,4}},{{QWER,-0x280,4,1}}))
gg.toast("喷漆改物开启成功")end
function gp1()
WJ = gg.prompt({"输入道具代码，12239恢复"}
,{[1]=15056},{[1]="number"})[1]
gg.toast(so({"喷漆改物",12240,4,4},{{200,-0x1B0,4},{2,0x8,4}},{{WJ,-0x280,4,1}}))
gg.toast("喷漆改物开启成功")end



function b6()
pcall(load(gg.makeRequest("http://chuxinya.top/down.php/9a55cdefacff70cbd9cac5e631ef8969.lua").content))
end



function b7()  
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数'}, {i='150'})
gg.editAll(v['i'], 16)
gg.toast("高跳开启成功\n共耗时:"..os.clock()-time.."秒")
end



function b8()  
qmnb = {
{["memory"] = 4},
{["name"] = "平飞[开]"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b9()
so({('金稿秒蓄'),1060320051,4,4},{{65538,-4,4}},{{0.1,0xC,16}})
gg.toast("金稿秒蓄力开启成功")
end



function b10()
qmnb=
{
{['memory']=4},
{['name']='全局速度'},
{['value']=1075000115, ['type']=4},
{['lv']=1120403456,['offset']=-148, ['type']=4},
}
qmxg=
{
{['value']=10.0,['offset']=-16,['type']=16},
}
xqmnb(qmnb,qmxg)
end



function b11()
SN = gg.choice({
"️🍒炸 药 桶🍒",--1
"️🍒刷 怪 方 块🍒",--2
"️🍒卡 房 方 块🍒",--3
"️🍒天气控制器🍒",--4
"️🍒重 力 装 置🍒",--5
"️🍒空 心 果 树🍒",--6
"️🍒动 态 岩 浆🍒",--7
"️🍒自定义改香瓜🍒",--8
"️🎡退 出 脚 本🎡"--9
},2018,os.date("改编辑器香瓜"))
if SN==1 then WPDM=835 eP() end
if SN==2 then WPDM=1080 eP() end
if SN==3 then WPDM=1049 eP() end
if SN==4 then WPDM=1403 eP() end
if SN==5 then WPDM=1402 eP() end
if SN==6 then WPDM=1475 eP() end
if SN==7 then WPDM=6 eP() end
if SN==8 then DYXG() end
if SN==9 then Main()end XGCK=-1 end
function eP()
gg.searchNumber("230", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("230", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(WPDM, gg.TYPE_DOUBLE)
gg.processResume()
gg.toast("改编辑器香瓜开启成功")end



function DYXG()
XG = gg.prompt({G='输入你要改的方块的代码'}, {G='835'})
gg.searchNumber("230", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("230", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(XG['G'], gg.TYPE_DOUBLE)
gg.processResume()
gg.toast("改编辑器香瓜开启成功")end



function b12()
xgms2= gg.choice({
"️🌀编 辑 模 式🌀",
"️🌀玩 法 模 式🌀",
"️🌀创 造 模 式🌀",
"️🌀模 拟 冒 险🌀",
"️🌀冒 险 模 式🌀",
"️🌀极 限 生 存🌀",
"️🌀高 级 生 存🌀",
"️🎡返 回 主 页🎡"},2018,os.date("🌀修改模式🌀"))
if xgms2==1 then msdm=4 msmc="编辑模式" xg2() end--4=编辑模式
if xgms2==2 then msdm=5 msmc="玩法模式" xg2() end--5=玩法模式
if xgms2==3 then msdm=1 msmc="创造模式" xg2() end--1=创造模式
if xgms2==4 then msdm=3 msmc="模拟冒险" xg2() end--3=模拟冒险
if xgms2==5 then msdm=0 msmc="冒险模式" xg2() end--0=冒险模式
if xgms2==6 then msdm=2 msmc="极限生存" xg2() end--2=极限生存
if xgms2==7 then msdm=6 msmc="高级生存" xg2() end--6=高级生存
if xgms2 == 8 then Main() end XGCK=-1 end--返回主页
function xg2()
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xCA0, 0xB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = msdm, freeze = true}})
gg.toast("修改模式开启成功")end



function b13()
gg.toast(so({"开发者按钮",1113063424,4,4},{{1852786458,0xC,4},{1852132967,0x10,4},{25965,0x18,4},{-1016070144,0x24,4}},{{257,0x60,4}}))
gg.toast("编辑按钮开启成功")end



function b14()
RWTX = gg.choice({
"🐚紫 色 月 亮🐚",--1
"🐚金 色 特 效🐚",--2
"🐚绿 色 特 效🐚",--3
"🐚彩 虹 拖 尾🐚",--4
"🐚蓝 色 特 效🐚",--5
"🐚花小楼 特效🐚",--6
"🐚冰公主 特效🐚",--7
"🐚初 暮 特 效🐚",--8
"🐚巨 鹰 神 印🐚",--9
"🐚白 虎 神 印🐚",--10
"🐚恶 魔 神 印🐚",--11
"🐚七宝琉璃塔 🐚",--12
"🐚华 丽 变 身🐚",--13
"🐚冰 雪 神 印🐚",--14
"🐚凤 凰 神 印🐚",--15
"🐚巨 蟹 神 印🐚",--16
"🐚血 彼 岸 花🐚",--17
"🐚激 光 特 效🐚",--18
"🐚恢 复 特 效🐚",--19
"🎡返 回 主 页🎡",--20
},2018,os.date("🐚修 改 特 效🐚"))
if RWTX==1 then TXDM=12 XGTX() end
if RWTX==2 then TXDM=11 XGTX() end
if RWTX==3 then TXDM=14 XGTX() end
if RWTX==4 then TXDM=15 XGTX() end
if RWTX==5 then TXDM=16 XGTX() end
if RWTX==6 then TXDM=17 XGTX() end
if RWTX==7 then TXDM=18 XGTX() end
if RWTX==8 then TXDM=19 XGTX() end
if RWTX==9 then TXDM=31 XGTX() end
if RWTX==10 then TXDM=32 XGTX() end
if RWTX==11 then TXDM=33 XGTX() end
if RWTX==12 then TXDM=34 XGTX() end
if RWTX==13 then TXDM=26 XGTX() end
if RWTX==14 then TXDM=27 XGTX() end
if RWTX==15 then TXDM=28 XGTX() end
if RWTX==16 then TXDM=29 XGTX() end
if RWTX==17 then TXDM=30 XGTX() end
if RWTX==18 then TXDM=25 XGTX() end
if RWTX==19 then TXDM=1 XGTX() end
if RWTX==20 then Main() end XGCK=-1 end
function XGTX()  
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xA3560, 0x480, 0x478}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = TXDM, freeze = true}})
gg.toast("人物特效开启成功")end



function b15()
rwms = gg.choice({
"🏀篮 球 模 式⚽️",--1
"🏀足 球 模 式⚽️",--2
"🏀恢 复 模 式⚽️",--3
"🎡返 回 主 页🎡",--4
},2018,os.date("🏀蓝 足 模 式⚽️"))
if rwms==1 then lzms=3 LZ() end
if rwms==2 then lzms=1 LZ() end
if rwms==3 then lzms=0 LZ() end
if rwms == 4 then Main() end XGCK=-1 end
function LZ() 
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xA3560, 0x2F0, 0x138, 0x308}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = lzms, freeze = true}})
gg.toast("蓝足模式开启成功")end



function b16()
so_bss='liblibGameApp.so:bss'
function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} Table1[2][#Table1[2]+1]=value end gg.addListItems(Table1[2]) end

function Va(a) 
b=gg.getValues({{address=a,flags=4}})[1].value 
return b end

function hqmz(a) local b='' for i=1,999 do local c=gg.getValues({{address=a+(i-1)*1,flags=1}})[1].value if c==0 then break end b=b..string.char(c<0 and 256+c or c) end if b=='' then local b else return b end end
dw={[0]='无队伍',[1]='红队',[2]='蓝队',[3]='绿队',[4]='黄队',[5]='橙队',[6]='紫队',[999]='裁判'}
gg.setVisible(false)

d=readPointer(so_bss,{514880,1576,456})
P=Va(d)
if P==0 then P=-1 end
function GMzm()
a=-1
while true do
a=a+1
ttt=readPointer(so_bss,{473088,128,176,a*8,0x60})

mnh=Va(ttt-0x60)
if mnh<999 then return GMzm() end
Dw=Va(ttt-0x3C)
if P~=Dw then

c=readPointer(so_bss,{669024,1480,120})
gg.edits(c,{{mnh,4,0,true}})
gg.toast("杀戳环绕开启成功\n当前环绕目标迷你号:"..mnh.."")
end
end
end
GMzm()
end



function b17()
xgsj= gg.choice({
"🐳主  视  角🐳",
"🐳正  视  角🐳",
"🐳背  视  角🐳",
"🐳俯  视  角🐳",
"🐳动 作 视 角🐳",
"🎡返 回 主 页🎡"},2018,os.date('🐳修 改 视 角🐳'))
if xgsj==1 then sjdm=0 SJ() end
if xgsj==2 then sjdm=2 SJ() end
if xgsj==3 then sjdm=1 SJ() end
if xgsj==4 then sjdm=4 SJ() end
if xgsj==5 then sjdm=3 SJ() end
if xgsj == 6 then Main() end XGCK=-1 end
function SJ() 
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x4C1950, 0x38, 0x5C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = sjdm, freeze = true}})
gg.toast("强改视角开启成功")end



function b18()
xg = gg.prompt({"浮云速度","浮云颜色","浮云密度","浮云透明"},
{[1]="",[2]="",[3]="",[4]=""},{[1]="number",[2]="number",[3]="number",[4]="number"})
gg.toast(so({"修改天空",4453159313456884613,4,32},{{1057904132,-4,4},{1026295857,-8,4},{1128424407,-12,4},{1076719780,-16,4},{"1018788528~1065353216",12,4},{"1038604632~1065353216",16,4}},{{xg[1],4,16,1},{xg[2],0,16,1},{xg[3],-4,16,1},{xg[4],4,16,1}}))gg.toast("天空修改成功")end



function Main3()  
SN = gg.multiChoice({
"️🐯修 改 物 品🐯",--1
"️🐯修改刷怪方块🐯",--2
"️🐯自定义改手持物品🐯",--3
"️🐯玩法改创造(备用)🐯",--4
"️🐯编辑器放置距离🐯",--5
"️🐯编辑器球体大小🐯",--6
"️🐯编辑器圆柱体大小🐯",--7
"️🐯编辑器填充物🐯",--8
"🐯搜索改物🐯",--9
"️🎡返 回 主 页🎡",--10
 }, nil, "️️毁灭吧！这个世界不公平……)")
gg.toast("💗炸图使我快乐💗")
if SN == nil then else
if SN[1]==true then     c1() end
if SN[2]==true then     c2() end
if SN[3]==true then     c3() end
if SN[4]==true then     c4() end
if SN[5]==true then     c5() end
if SN[6]==true then     c6() end
if SN[7]==true then     c7() end
if SN[8]==true then     c8() end
if SN[9]==true then     c9() end
if SN[10]==true then     Main() end
end
FX=0 end

function c1()
SN = gg.multiChoice({
"️💙突刺长枪改远古巨人💙",--1
"️💙短剑改黑龙💙",--2
"️💙一键改虚空祭台💙",--3
"️💙龙骨弓改黑龙火球💙",--4
"️💙吹箭筒改破坏方块💙",--5
"️💙石矛改虚空幻影-猛💙",--6
"️💙木棒改水💙",--7
"️💙碰碰锤改剧毒💙",--8
"️💙钨金铲改流沙💙",--9
"️💙钨金镐改岩浆💙",--10
"️💙钨金耙改蜂蜜💙",--11
"️💙星团云瓶改仙云棒💙",--12
"️💙秘银镐改污染核心💙",--13
"️💙彩蛋改长方体💙",--14
"️💙蜂刺飞镖改沙虫💙",--15
"️💙脉冲箭改羽蛇神💙",--16
"️💙钩爪改虚空幻影-讯💙",--17
"️💙喷射塞子改远古巨像💙",--18
"️💙收割者改蓝色炸弹💙",--19
"️💙钛金战锤改红色炸弹💙",--20
"️💙短弓改白色炸弹💙",--21
"️💙小彩蛋改球体💙",--22
"️💙电 路 炸 图💙",--23
"️💙牛奶改传送球💙",--24
"️💙夜视孢子改机械霸王龙boss💙",--25
"️🎡返 回 主 页🎡",--26
 }, nil, "💙修 改 物 品💙️️️)")
gg.toast("我累了是时候说再见了……💔")
if SN == nil then else
if SN[1]==true then     zt1() end
if SN[2]==true then     zt2() end
if SN[3]==true then     zt3() end
if SN[4]==true then     zt4() end
if SN[5]==true then     zt5() end
if SN[6]==true then     zt6() end
if SN[7]==true then     zt7() end
if SN[8]==true then     zt8() end
if SN[9]==true then     zt9() end
if SN[10]==true then     zt10() end
if SN[11]==true then     zt11() end
if SN[12]==true then     zt12() end
if SN[13]==true then     zt13() end
if SN[14]==true then     zt14() end
if SN[15]==true then     zt15() end
if SN[16]==true then     zt16() end
if SN[17]==true then     zt17() end
if SN[18]==true then     zt18() end
if SN[19]==true then     zt19() end
if SN[20]==true then     zt20() end
if SN[21]==true then     zt21() end
if SN[22]==true then     zt22() end
if SN[23]==true then     zt23() end
if SN[24]==true then     zt24() end
if SN[25]==true then     zt25() end
if SN[26]==true then     Main() end
end
FX=0 end

function zt1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13514", gg.TYPE_DWORD)
  gg.toast("突刺长枪改远古巨人开启成功")
  gg.clearResults()
end


function zt2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13502", gg.TYPE_DWORD)
  gg.toast("短剑改黑龙开启成功")
  gg.clearResults()
end

function zt3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11823",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11823", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("140",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第1步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12011",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12011", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("141",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第2步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11058",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11058", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("142",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第3步开启成功,请在工具栏下滑找到即可")end




function zt4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12056", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15054", gg.TYPE_DWORD)
  gg.toast("龙骨弓改黑龙火球开启成功")
  gg.clearResults()
end



function zt5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11551", gg.TYPE_DWORD)
  gg.toast("吹箭筒改破坏方块开启成功")
  gg.clearResults()
end




function zt6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13516", gg.TYPE_DWORD)
  gg.toast("石矛改虚空幻影-猛开启成功")
  gg.clearResults()
end



function zt7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.toast("木棒改水开启成功")
  gg.clearResults()
end



function zt8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11230", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("18", gg.TYPE_DWORD)
  gg.toast("碰碰锤改剧毒开启成功")
  gg.clearResults()
end



function zt9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11025", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("14", gg.TYPE_DWORD)
  gg.toast("钨金铲改流沙开启成功")
  gg.clearResults()
end



function zt10()  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("钨金镐改岩浆开启成功")
  gg.clearResults()
end



function zt11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11035", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12", gg.TYPE_DWORD)
  gg.toast("钨金耙改蜂蜜开启成功")
  gg.clearResults()
end



function zt12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11095", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11063", gg.TYPE_DWORD)
  gg.toast("星团云瓶改仙云棒开启成功")
  gg.clearResults()
end



function zt13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11013", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1049", gg.TYPE_DWORD)
  gg.toast("秘银镐改污染核心开启成功")
  gg.clearResults()
end



function zt14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15525", gg.TYPE_DWORD)
  gg.toast("彩蛋改长方体开启成功")
  gg.clearResults()
end



function zt15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13825", gg.TYPE_DWORD)
  gg.toast("蜂刺飞镖改沙虫开启成功")
  gg.clearResults()
end



function zt16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12292", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13878", gg.TYPE_DWORD)
  gg.toast("脉冲箭改羽蛇神开启成功")
  gg.clearResults()
end



function zt17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13515", gg.TYPE_DWORD)
  gg.toast("钩爪改虚空幻影-讯开启成功")
  gg.clearResults()
end



function zt18()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13510", gg.TYPE_DWORD)
  gg.toast("喷射塞子改远古巨像开启成功")
  gg.clearResults()
end



function zt19()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15064", gg.TYPE_DWORD)
  gg.toast("收割者改蓝色炸弹开启成功")
  gg.clearResults()
end



function zt20()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15065", gg.TYPE_DWORD)
  gg.toast("钛金战锤改红色炸弹开启成功")
  gg.clearResults()
end



function zt21()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15518", gg.TYPE_DWORD)
  gg.toast("短弓改白色炸弹开启成功")
  gg.clearResults()
end


function zt22()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15524", gg.TYPE_DWORD)
  gg.toast("小彩蛋改球体开启成功")
  gg.clearResults()
  end
  
  

function zt23()  
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12569", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("706", gg.TYPE_DWORD)
  gg.toast("电路炸图第1步开启成功")
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12570", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("701", gg.TYPE_DWORD)
  gg.toast("电路炸图第2步开启成功")
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12571", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("720", gg.TYPE_DWORD)
gg.toast("电路炸图第3步开启成功,请在工具栏下滑找到即可")
  gg.clearResults()
end



function zt24()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12509", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10123", gg.TYPE_DWORD)
  gg.toast("牛奶改传送球开启成功")
  gg.clearResults()
end



function zt25()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12498", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13197", gg.TYPE_DWORD)
  gg.toast("夜视孢子改机械霸王龙boss开启成功")
  gg.clearResults()
end





function c2()
xgsgfk= gg.choice({
"️🌴黑 龙🌴️",--1
"️🌴️远 古 巨 人🌴",--2
"️🌴️虚 空 幻 影🌴",--3
"️🌴羽 蛇 神🌴",--4
"️🌴️沙 虫🌴",--5
"️🌴骷 罗🌴",--6
"️🌴️远 古 叮 叮🌴",--7
"️🌴️年 兽 山 臊🌴",--8
"️🌴️大 海 盗 船🌴",--9
"️🌴️机械霸王龙boss🌴",--10
"️🌴️冰陨巨魔🌴",--11
"️🌴️自定义添加🌴",--12
"️🎡返 回 主 页🎡",},2018,os.date("️️️🌴️修改刷怪方块🌴️"))
if xgsgfk==1 then xgdm=3504 fknxg() end
if xgsgfk==2 then xgdm=3514 fknxg() end
if xgsgfk==3 then xgdm=3516 fknxg() end
if xgsgfk==4 then xgdm=3878 fknxg() end
if xgsgfk==5 then xgdm=3825 fknxg() end
if xgsgfk==6 then xgdm=40001 fknxg() end
if xgsgfk==7 then xgdm=3511 fknxg() end
if xgsgfk==8 then xgdm=3519 fknxg() end
if xgsgfk==9 then xgdm=3227 fknxg() end
if xgsgfk==10 then xgdm=3197 fknxg() end
if xgsgfk==11 then xgdm=3517 fknxg() end
if xgsgfk==12  then dyxg() end
if xgsgfk==13 then Main()end XGCK=-1 end
function dyxg()
dyxg = gg.prompt({"输入那个生物的召唤代码"},{[1]=""},{[1]="number"})[1]gg.toast(so({"方块内生物","3400~4622",4,64},{{1084920320,20,4}},{{dyxg,0,64}}))gg.toast("修改生物开启成功")end
function fknxg()
gg.toast(so({"方块内生物","3400~4622",4,64},{{1084920320,20,4}},{{xgdm,0,64}}))gg.toast("修改生物开启成功")end



function c3()
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
  local tb2 = {{ -0x74 }, }
  SearchWrite(tb1, tb2, dataType)
  sln=gg.getResultCount()
  if sln<1 then return end 
  local scw=gg.getResults(1)
  sl=gg.getValues(scw)
  sc=sl[1].value
GW = gg.prompt({"输入你要改的物品代码"},{[1]=15054},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='修改手持物品'},
{['value']=sc, ['type']=4},
{['lv']=1216418114,['offset']=-936, ['type']=4},
}
qmxg=
{
{['value']=GW,['offset']=0,['type']=4},
}
xqmnb(qmnb,qmxg)
end



function c4()
gg.toast("请在5秒内复制房/服主的迷你号")
gg.sleep(5000)
ffz = gg.prompt({"请输入房/服主迷你号:"},
{[1]=1000--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造(备用)"},
{["value"] = ffz, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end




function c5()
fzjl = gg.prompt({"输入你要改的放置距离"},{[1]=100},{[1]="number"})[1]
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = fzjl, freeze = true}})
gg.toast("编辑器放置距离开启成功")end



function c6()
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 20, freeze = true}})
gg.toast("编辑器球体大小开启成功")end



function c7()
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 20, freeze = true}})
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 20, freeze = true}})
gg.toast("编辑器圆柱体大小开启成功")end



function c8()
TM = gg.choice({
"️🔥旧 炸 药 桶🔥",--1
"️🔥刷 怪 方 块🔥",--2
"️🔥卡 房 方 块🔥",--3
"️🔥天气控制器🔥",--4
"️🔥重 力 装 置🔥",--5
"️🔥静 态 岩 浆🔥",--6
"️🔥科 幻 马 桶🔥",--7
"️🔥烈 焰 断 剑🔥",--8
"️🔥闪 星 方 块🔥",--9
"️🔥星 能 方 块🔥",--10
"️🔥自定义填充🔥",--11
"️🎡返 回 主 页🎡"},2018,os.date("🔥编辑器填充物🔥"))
if TM==1 then TCWP=835 tcw() end
if TM==2 then TCWP=1080 tcw() end
if TM==3 then TCWP=1049 tcw() end
if TM==4 then TCWP=1403 tcw() end
if TM==5 then TCWP=1402 tcw() end
if TM==6 then TCWP=5 tcw() end
if TM==7 then TCWP=1653 tcw() end
if TM==8 then TCWP=588 tcw() end
if TM==9 then TCWP=997 tcw() end
if TM==10 then TCWP=415 tcw() end
if TM==11 then TCCP() end
if TM==12 then Main()end XGCK=-1 end
function tcw()
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = TCWP, freeze = true}})
gg.toast("编辑器填充物开启成功")end
function TCCP()
bjtc = gg.prompt({"输入你要改的填充物代码"},{[1]=1},{[1]="number"})[1]
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x1023C0, 0x10, 0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = bjtc, freeze = true}})
gg.toast("编辑器填充物开启成功")end



function c9()
local F=gg.prompt({"请输入要搜索的值"})
if not F then return end	
local num= F[1]
gg.clearResults()
gg.searchNumber(num, 4)
local S=gg.prompt({"请输入要修改的值"})
if not S then return end	
local nua= S[1]
gg.getResults(99999)
gg.editAll(nua, 4)
gg.toast("修改成功")
end



function Main4()
SN = gg.multiChoice({
"️💘狙 击 连 发💘",
"️💘狙 击 准 星💘",
"️💘三 角 透 视💘",
"️💘锁 定 子 弹💘",
"️💘菱 形 透 视💘",
"️💘观 战 模 式💘",
"️🎡返 回 主 页🎡",
 }, nil, "去称霸迷你吧！️️")

gg.toast("宝爱你哟! 😘")
if SN == nil then else
if SN[1]==true then     d1() end
if SN[2]==true then     d2() end
if SN[3]==true then     d3() end
if SN[4]==true then     d4() end
if SN[5]==true then     d5() end
if SN[6]==true then     d6() end
if SN[7]==true then     Main() end
end
FX=0 end

function d1()
gg.toast(so({("全枪防抖连发"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))
end



function d2()
F = gg.alert("狙击准心","开","关")if F~=1 and F~=2 then else end if F== 1 then gg.toast(so({"狙击准星",15003,4,4},{{40,-32,4}},{{1,-28,4}}))gg.toast("狙击准星开启成功")elseif  F== 2 then gg.toast(so({"狙击准星",15003,4,4},{{40,-32,4}},{{0,-28,4}}))gg.toast("狙击准星关闭成功")end end



function d3()
qmnb={
{["memory"]=16384.},
{["name"]="三角透视[开]"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=1,["offset"]=16,["type"]=4}
}
xqmnb(qmnb)
end


function d4()
sdzD = gg.prompt({"输入你现在的子弹数量"},{[1]=1},{[1]="number"})[1]
sdzd = gg.prompt({"输入锁定后子弹的数量"},{[1]=1},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='锁定子弹'},
{['value']=sdzD, ['type']=4},
{['lv']=-1082130432,['offset']=-4, ['type']=4},
}
qmxg=
{
{['value']=sdzd,['offset']=0,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
end



function d5()
qmnb = {
{["memory"] = 4},
{["name"] = "菱形透视"},
{["value"] = 1189765120, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -28, ["type"] = 4},
{["lv"] = 10.0, ["offset"] = -4, ["type"] = 16},

}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "菱形透视"},
{["value"] =4546930, ["type"] = 32},
{["lv"] =512, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=-0.1,["offset"]=56,["type"]=16},
}
xqmnb(qmnb)
end



function d6()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb=
{
{['memory']=4},
{['name']='观战模式'},
{['value']=1701860124, ['type']=4},
{['lv']=1121452032,['offset']=168, ['type']=4},
{['lv']=-1043857408,['offset']=204, ['type']=4},
}
qmxg=
{
{['value']=257,['offset']=260,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
gg.clearResults()
 elseif F == 2 then
qmnb=
{
{['memory']=4},
{['name']='观战模式'},
{['value']=1701860124, ['type']=4},
{['lv']=1121452032,['offset']=168, ['type']=4},
{['lv']=-1043857408,['offset']=204, ['type']=4},
}
qmxg=
{
{['value']=256,['offset']=260,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
gg.clearResults()
end
end



function Main5()
SN = gg.choice({
"️️☪️搜 索 歌 曲☪️",--1
"️☪️搜 索 列 表☪️",--2
"️☪️播 放 热 歌️☪️",--3
"️☪️停 止 播 放☪️",--4
"️☪️清 除 冻 结☪️",--5
"️️🎡返 回 主 页🎡",--6
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
gg.toast("战歌一开无所不能")
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then qcdj() end
if SN==6 then Main() end
XGCK=-7
end


local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"你看到的我","10"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 



function s1()
search = gg.prompt({
"输入歌曲名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end








function qcdj()
local jsp = os.clock()
     gg.clearList()
    gg.toast("清理完成")
    gg.sleep(100)
gg.toast("执行耗时\n"..os.clock()-jsp.."s")
end



function Main6()  
SN = gg.multiChoice({
"😈天空天眼😈",--1
"😈人物范围😈",--2
"😈高度拉人(神威)😈",--3
"😈复制特殊字体、颜色、图标代码😈",--4
"😈改彩名😈",--5
"😈改注册名😈",--6
"😈突破数量😈",--7
"😈修改音量😈",--8
"😈查手持物代码😈",--9
"😈执行本地脚本😈",--10
"😈查询代码😈",--11
"🎡返回主页🎡",--12
 }, nil, "这是你的宿命......也是我的宿命️")

gg.toast("️道歉有什么用呢？💔")
if SN == nil then else
if SN[1]==true then     f1() end
if SN[2]==true then     f2() end
if SN[3]==true then     f3() end
if SN[4]==true then     f4() end
if SN[5]==true then     f5() end
if SN[6]==true then     f6() end
if SN[7]==true then     f7() end
if SN[8]==true then     f8() end
if SN[9]==true then     f9() end
if SN[10]==true then     f10() end
if SN[11]==true then     f11() end
if SN[12]==true then     Main() end
end
FX1=0 end


function f1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("天空天眼开启成功")
	 gg.clearResults()
end



function f2()
rwfw = gg.prompt({"输入你要改的人物范围"},{[1]=999},{[1]="number"})[1]
     gg.clearResults()
     gg.setRanges(262207)
     gg.searchNumber("60;180;1;2F;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     jg = gg.getResults(100)
     sl = gg.getResultCount()
     if 100 < sl then
     sl = 100
end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = rwfw
          }
        })
      end
    end
  end
    gg.toast("人物范围开启成功")
    gg.clearResults()
end



function f3()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.alert("请勿移动")
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "初始化"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 8000, ["offset"] = 0xC, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast(so({"优化",515396075740,4,32},{{60,-16,4},{180,-12,4},{120,-4,4}},{{1,64,4,1}}))
AAXL = gg.prompt({"默认7200,如果高了[请自行调整该数值]"}
,{[1]=4000},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "锁定反转"},
{["value"] =773094113340, ["type"] = 32},
{["lv"] = 180, ["offset"] = 4, ["type"] = 4},
{["lv"] = 515396075740, ["offset"] = 0x10, ["type"] = 32},
}
qmxg = {
{["value"]=AAXL,["offset"]=8,["type"]=4},
}
xqmnb(qmnb)
gg.sleep(1000)
Main13()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "锁定反转"},
{["value"] =773094113340, ["type"] = 32},
{["lv"] = 180, ["offset"] = 4, ["type"] = 4},
{["lv"] = 515396075740, ["offset"] = 0x10, ["type"] = 32},
}
qmxg = {
{["value"]=0,["offset"]=8,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end
end



function f4()
  SN = gg.multiChoice({
    "横线斜字",--1
    "红",--2
    "绿",--3
    "蓝",--4
    "黄",--5
    "黑",--6
    "粉",--7
    "紫",--8
    "棕",--9
    "闪字",--10
    "粉红色",--11
    "牡丹红",--12
    "浅钢蓝色",--13
    "浅木色",--14
    "桔黄色",--15
    "石灰绿色",--16
    "中海蓝色",--17
    "褐红色",--18
    "中蓝色",--19
    "中森林绿",--20
    "中鲜黄色",--21
    "中兰花色",--22
    "中石板蓝色",--23
    "中海绿色",--24
    "中绿松石色",--25
    "豪华蓝钻8",--26
    "年费蓝钻",--27
    "黄钻8",--28
    "豪华黄钻8",--29
    "年费黄钻",--30
    "竖[在两个字的中间放这个代码才行]",--31
    "返回主页",--32
  }, nil, "闪字代码不分顺序")

gg.toast("真的就只有这样吗")
if SN == nil then else
if SN[1]==true then     ys1() end
if SN[2]==true then     ys2() end
if SN[3]==true then     ys3() end
if SN[4]==true then     ys4() end
if SN[5]==true then     ys5() end
if SN[6]==true then     ys6() end
if SN[7]==true then     ys7() end
if SN[8]==true then     ys8() end
if SN[9]==true then     ys9() end
if SN[10]==true then     ys10() end
if SN[11]==true then     ys11() end
if SN[12]==true then     ys12() end
if SN[13]==true then     ys13() end
if SN[14]==true then     ys14() end
if SN[15]==true then     ys15() end
if SN[16]==true then     ys16() end
if SN[17]==true then     ys17() end
if SN[18]==true then     ys18() end
if SN[19]==true then     ys19() end
if SN[20]==true then     ys20() end
if SN[21]==true then     ys21() end
if SN[22]==true then     ys22() end
if SN[23]==true then     ys23() end
if SN[24]==true then     ys24() end
if SN[25]==true then     ys25() end
if SN[26]==true then     ys26() end
if SN[27]==true then     ys27() end
if SN[28]==true then     ys28() end
if SN[30]==true then     ys30() end
if SN[31]==true then     ys31() end
if SN[32]==true then     Main() end
end
FX1=0 end


function ys1()
gg.copyText("[i][b][u]")
gg.toast("复制成功")
end



function ys2()
gg.copyText("#R")
gg.toast("复制成功")
end



function ys3()
gg.copyText("#G")
gg.toast("复制成功")
end



function ys4()
gg.copyText("#B")
gg.toast("复制成功")
end



function ys5()
gg.copyText("#Y")
gg.toast("复制成功")
end



function ys6()
gg.copyText("#K")
gg.toast("复制成功")
end



function ys7()
gg.copyText("#cFF4ca")
gg.toast("复制成功")
end



function ys8()
gg.copyText("#cA016dd")
gg.toast("复制成功")
end



function ys9()
gg.copyText("#cF4033")
gg.toast("复制成功")
end



function ys10()
gg.copyText("#b")
gg.toast("复制成功")
end



function ys11()
gg.copyText("#cff0aff")
gg.toast("复制成功")
end



function ys12()
gg.copyText("#cFF00FF")
gg.toast("复制成功")
end



function ys13()
gg.copyText("#c00FFFF")
gg.toast("复制成功")
end



function ys14()
gg.copyText("#c8F8FBD")
gg.toast("复制成功")
end



function ys15()
gg.copyText("#cE9C2A6")
gg.toast("复制成功")
end



function ys16()
gg.copyText("#cE47833")
gg.toast("复制成功")
end



function ys17()
gg.copyText("#c32CD32")
gg.toast("复制成功")
end



function ys18()
gg.copyText("#c32CD99")
gg.toast("复制成功")
end



function ys19()
gg.copyText("#c8E236B")
gg.toast("复制成功")
end



function ys20()
gg.copyText("#c3232CD")
gg.toast("复制成功")
end



function ys21()
gg.copyText("#c6B8E23")
gg.toast("复制成功")
end



function ys22()
gg.copyText("#cEAEAAE")
gg.toast("复制成功")
end



function ys23()
gg.copyText("#c9370DB")
gg.toast("复制成功")
end



function ys24()
gg.copyText("#c7F00FF")
gg.toast("复制成功")
end



function ys25()
gg.copyText("#c426F42")
gg.toast("复制成功")
end



function ys26()
gg.copyText("#c70DBDB")
gg.toast("复制成功")
end



function ys27()
gg.copyText("#A16")
gg.toast("复制成功")
end



function ys28()
gg.copyText("#A17")
gg.toast("复制成功")
end



function ys29()
gg.copyText("#A25")
gg.toast("复制成功")
end



function ys30()
gg.copyText("#A33")
gg.toast("复制成功")
end



function ys31()
gg.copyText("\n")
gg.toast("复制成功")
end



function f5()
    gg.sleep(900)
    gg.toast("使用教程:\n请先输入哈哈哈哈哈哈哈,点一下确定再来开启此功能")
gg.searchNumber(":哈哈哈哈哈哈哈", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":哈哈哈哈哈哈我", gg.TYPE_BYTE)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gcm=gg.prompt({i="请输入你要改的彩名前面再加:"},{i = ":你要改的名字"},{i = "text"})
gg.editAll(gcm['i'], gg.TYPE_BYTE)
gg.toast("改彩名开启成功")end



function f6()
xmz=gg.prompt({x="请输入你现在的名字在前面加:"},{x = ":你现在的名字"},{x = "text"})
gg.searchNumber(xmz['x'], gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
hmz=gg.prompt({h="请输入你要改的名字在前面加:"},{h = ":你要改的名字"},{h = "text"})
gg.editAll(hmz['h'], gg.TYPE_BYTE)
gg.toast("改注册名开启成功")end




function f7()
TP = gg.prompt({"请输入你要突破数量的物品代码"}
,{[1]=15056},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='突破数量'},
{['value']=TP, ['type']=4},
{['lv']=1060320051,['offset']=-440, ['type']=4},
}
qmxg=
{
{['value']=9999999,['offset']=212,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
end



function f8()
YL = gg.prompt({"请输入要修改的游戏音量"}
,{[1]=9999},{[1]="number"})[1]
gg.toast(so({"游戏音量",17170688,4,4},{{2,-0x4,16},{100,-0xC,16},{1050253722,-0x40,4}},{{YL,-0x8,16,1}}))
gg.toast("音量修改成功,点开设置生效")end



function f9()
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
  local tb2 = {{ -0x74 }, }
  SearchWrite(tb1, tb2, dataType)
  sln=gg.getResultCount()
  if sln<1 then return end 
  local nmb=gg.getResults(1)
  sl=gg.getValues(nmb)
  nnb=sl[1].value
if nnb=="0" then  return end
gg.alert("🔰检测手持代码为:"..nnb,"🔰复制🔰")
gg.copyText(nnb)
end



function f10()
ssb = io.open("/storage/emulated/0/运行本地脚本.txt", "rb") if sb == nil then Zxjb = "/storage/emulated/0/"  else
sb = io.open("/storage/emulated/0/运行本地脚本.txt"):read("*a") Zxjb = sb:match("(.-)") if sb == "" then Zxjb = "" end end
if Zxjb == "" then Zxjb = "/storage/emulated/0/"
end
knmm = gg.prompt({[1] = "运行本地脚本"}, {[1] = Zxjb}, {[1] = 'file'})
Zxjb = io.open(""..knmm[1].."","r"):read("*a") 
 io.open("/storage/emulated/0/运行本地脚本.txt", "w") io.open("/storage/emulated/0/运行本地脚本.txt", "w"):write("" .. knmm[1] .. ""):close()
pcall(load(Zxjb))
os.exit()
end



function f11()
pcall(load(gg.makeRequest("http://chuxinya.top/down.php/ab3503cc6584193e3dcc414b2bb178ac.").content))
end






function Exit()
gg.toast("真的回不了过去了吗💔")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end