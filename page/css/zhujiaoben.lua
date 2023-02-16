--当你看到这句话就证明nmsl
 get=gg.getTargetInfo() if get.label=='迷你世界' then else gg. alert("请在进程里选择迷你世界") os.exit() end
  if get.versionName~='1.20.0' then F = gg.alert("当前版本为"..get.versionName.."此辅助支持版本为1.19.5-1.20.0\n旧版本可能不能链接\n推荐您升级迷你世界版本后再进行炸图","是","否") if  F== 1 then elseif F == 2 then os.exit() else end end
  
gg.alert("本辅助不侵犯迷你世界的合法权益，该软件仅供技术交流，请在24小时内删除\nCA炸图辅助一贯保持永久免费的原则，如果你买了就证明你被骗了")
gg.toast("启动中，请稍后\n已加载1%")
Load=[=[
for i=1,666 do 
local A=tostring(debug.getinfo(load)['func'])
local B=A:match("@(.-):")
if not string.find(A,"function: load") then
gg.alert("大撒币 抱歉，你工具没了🌝\n\n判断工具所在路径...\n"..B.."\n已删除❗❗❗")
os.remove(B:match("[^/]*$"))
os.remove(gg.getFile():match("[^/]*$"))
os.remove(B)
return os.exit()
end
]=]
gg.toast("启动中，请稍后\n已加载20%")
fangyu=[=[
 local info = {}
for i = 1, 10 do
    info[i] = debug.getinfo(i + 1)
end
info = #info
while info ~= 2 or debug.getinfo(0) or not debug.getinfo(1) do
    return 
gg.alert("检测到您使用了第三方打开辅助‼️\n别想使用拦截器‼️\n因此触发核心防御")
end 
]=]
gg.toast("启动中，请稍后\n已加载39%")
gg.toast("启动中，请稍后\n已加载51%")
gg.sleep(520)
gg.toast("启动中，请稍后\n已加载70%")
gg.sleep(520)
gg.toast("启动中，请稍后\n已加载80%")
gg.sleep(520)
gg.toast("启动中，请稍后\n已加载90%")
gg.sleep(520)
gg.toast("启动中，请稍后\n已加载99%")
gg.sleep(520)
function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("["..name.."]已注入")end end
uper ='开始启动'i='您退出了脚本'print(i)
t=1
  function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={["修改"] = false,["偏移"] = tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end

function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功，共修改1个数值" else lde.srg(csn) return a[1].."开启失败!!!" end end

function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共搜索"..#t.." 条数据")
     else
      gg.toast("开启失败")
      return false
    end
   else
    gg.toast("开启失败")
    return false
  end
end


local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local isok = mearrass(memory, array)
if isok then
local isok, datatype = typetab(array, type)
if isok then
if Assert(array[1].hv) then
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #data do
data[i].isok = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then

data[z].isok = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].isok = false
end
end
end
end
for i = 1, #data do
if data[i].isok then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("type错误")
gg.toast("type错误")
os.exit()
end
else
print("错误")
gg.toast("错误")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end

lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end
function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function readValue(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
local sod,so_bss,xdd='libAppPlayJNI.so','libAppPlayJNI.so:bss',gg.getRangesList("libAppPlayJNI.so:bss") 
function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功") end
function gg.Hjkl(value) local GT=gg.getListItems() local t={} for i,v in pairs(GT) do if v.value==value then table.insert(t,v) end end gg.removeListItems(t) end
function hqmz(a) local b='' for i=1,999 do local c=gg.getValues({{address=a+(i-1)*1,flags=1}})[1].value if c==0 then break end b=b..string.char(c<0 and 256+c or c) end if b=='' then local b else return b end end

function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n          共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end
function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('CA:\n'..qmnb[2]['name']..'成功共修改' .. xgsl .. '条数据') else gg.toast('CA:\n'..qmnb[2]['name'] .. '开启失败') end end end end
--[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end
--[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end
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
recover=gg.getResults(100000)  function AppSearch(SSNR,XGNR,BCNR,notWrite)  gg.clearResults()  gg.setRanges(SSNR["M"])  gg.searchNumber(SSNR[1]["mv"],SSNR[1]["lx"],false,gg.SIGN_EQUAL,(SSNR[1]["addr"] or nil),(SSNR[1]["toAddr"] or nil))  jg=gg.getResults(100000)  local base=(SSNR[1]["offs"] or 0)  local data={}  if #jg==0 then  gg.alert("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))  gg.loadResults(recover)  return nil  end  for i=1,#jg do  jg[i].Useful=true  end  for k=2,#SSNR do  if not SSNR[k] then  break  end  local content={}  local offset=SSNR[k]["offs"]-base  local value=SSNR[k]["sv"]  local type=SSNR[k]["lx"]  local to=(SSNR[k]["to"] or value)  local num={}  if to<value then  to,value=value,to  end    for i=1,#jg do  if jg[i].Useful==true then  table.insert(content,{})  content[#content].address=jg[i].address+offset  content[#content].flags=type  num[#num+1]=i  end  end      if #content==0 then gg.alert("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or "")) gg.loadResults(recover) return nil end  content=gg.getValues(content)      for i,v in pairs(content) do  if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then  jg[num[i]].Useful=false  end  end    end  for j=1,#jg do  if jg[j].Useful==true then  data[#data+1]=jg[j].address  end  end  if #data==0 then  gg.alert("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))  gg.loadResults(recover)  return nil  end  if notWrite==true then  gg.loadResults(recover)  return data  end  if XGNR then  local write={}  for i=1,#data do  for j=1,#XGNR do  write[#write+1]={}  write[#write].address=data[i]+(XGNR[j][2]-base)  write[#write].flags=XGNR[j][3]  write[#write].value=XGNR[j][1]  write[#write].freeze=XGNR[j][4]  write[#write].name=XGNR[j][5] or nil  if write[#write].freeze==true then  gg.addListItems({[1]=write[#write]})  else  gg.setValues({[1]=write[#write]})  end  if XGNR[j][6]==true then  gg.addListItems({[1]=write[#write]})  end  end  end  end  if BCNR then  local bc={}  for j=1,#data do  for i=1,#BCNR do  bc[#bc+1]={}  bc[#bc].address=data[j]+(BCNR[i][1]-base)  bc[#bc].flags=BCNR[i][2]  bc[#bc].name=BCNR[i][3]  end  end  gg.addListItems(bc)  end  gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改成功")  gg.loadResults(recover)  end

recover=gg.getResults(100000)
function AppSearch(SSNR,XGNR,BCNR,notWrite)
  gg.clearResults()
  gg.setRanges(SSNR["M"])
  gg.searchNumber(SSNR[1]["mv"],SSNR[1]["lx"],false,gg.SIGN_EQUAL,(SSNR[1]["addr"] or nil),(SSNR[1]["toAddr"] or nil))
  jg=gg.getResults(100000)
  local base=(SSNR[1]["offs"] or 0)
  local data={}
  if #jg==0 then
    gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))
    gg.loadResults(recover)
    return nil
  end
  for i=1,#jg do
    jg[i].Useful=true
  end
  
    for k=2,#SSNR do
      if not SSNR[k] then
        break
      end
      local content={}
      local offset=SSNR[k]["offs"]-base
      local value=SSNR[k]["sv"]
      local type=SSNR[k]["lx"]
      local to=(SSNR[k]["to"] or value)
      local num={}
      if to<value then
        to,value=value,to
      end
      
      --↓
      for i=1,#jg do
        if jg[i].Useful==true then
          table.insert(content,{})
          content[#content].address=jg[i].address+offset--偏移部分
          content[#content].flags=type
          num[#num+1]=i
        end
      end
      --存放偏移后的部分↑
      
      --↓
      if #content==0 then gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or "")) gg.loadResults(recover) return nil end
      content=gg.getValues(content)
      --存放完一起gg.getValues↑
      
      --一起判断↓
      for i,v in pairs(content) do
        if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then
          jg[num[i]].Useful=false
        end
      end
      --↑
      
    end
    
    for j=1,#jg do
      if jg[j].Useful==true then
        data[#data+1]=jg[j].address
      end
    end
     
  if #data==0 then
    gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))
    gg.loadResults(recover)
    return nil
  end
  if notWrite==true then
    gg.loadResults(recover)
    return data
  end
  if XGNR then
  local write={}
  for i=1,#data do
    for j=1,#XGNR do
      write[#write+1]={}
      write[#write].address=data[i]+(XGNR[j][2]-base)
      write[#write].flags=XGNR[j][3]
      write[#write].value=XGNR[j][1]
      write[#write].freeze=XGNR[j][4]
      write[#write].name=XGNR[j][5] or nil
      if write[#write].freeze==true then
        gg.addListItems({[1]=write[#write]})
      else
        gg.setValues({[1]=write[#write]})
      end
      if XGNR[j][6]==true then
        gg.addListItems({[1]=write[#write]})
      end
    end
  end
  end
  if BCNR then
  local bc={}
  for j=1,#data do
  for i=1,#BCNR do
    bc[#bc+1]={}
    bc[#bc].address=data[j]+(BCNR[i][1]-base)
    bc[#bc].flags=BCNR[i][2]
    bc[#bc].name=BCNR[i][3]
  end
  end
  gg.addListItems(bc)
  end
  gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改成功")
  gg.loadResults(recover)
end


function CS2()  
local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x788}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x78C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
gg.toast("防检测开启成功")
end
--------功能区---------
function CA1()
SJ = os.date("%Y年%m月%d日%H时%M分")
menu = gg.choice({
	 "开始炸图",
	 "退出炸图",
	 "稳定版防闪退(框架才能开)",
   "清理冻结数据（建议退房就开一次）",
   "XE防闪退(炸不了创造)",
}, nil, "★当前时间:"..SJ.."★\n★CA炸图辅助版本号:4.7.2★\n公告:傻逼盗号废物")
if menu == 1 then CAZ1() end
if menu == 2 then HS73() end
if menu == 3 then CS2() end
if menu == 4 then F3() end
if menu == 5 then XENB() end
FX1=0
end

function F3()
     gg.toast("开启清理")
          gg.sleep(500)
               gg.toast("正在分析数据")
                    gg.sleep(1300)
                         gg.toast("清理中")
                              gg.sleep(1000)
                                   gg.clearList()
                                        gg.toast("清理完成")
                                        end


function XENB()
pcall(load(gg.makeRequest("http://ca.zhatu.club/css/xl.lua").content))
end

function CAZ1()
SN = gg.choice({
	 "炸图类",
	 "PVP类",
	 "狙击类",
	 "恶心类",
}, nil, "进不去或修改失败请使用V8盒子")
if SN==1 then
	 CAZ()
end
if SN==2 then
	 CAP()
end
if SN==3 then
	 CAJ()
end
if SN==4 then
	 CAE()
end 
FX=0
end

function CAZ()
menu = gg.choice({
"1.创造炸图",
"2.生存炸图",
"3,通用卡猴",
"4.返回主页",},nil,"")
if menu == 1 then XEC() end
if menu == 2 then CASC() end
if menu == 3 then KH() end
if menu == 4 then CA1() end
FX1=0
end

function KH()
SN = gg.multiChoice({
	 "喷漆改乐器",
   "手持物品改乐器",
               	 "返回上一页",
                  }, nil, "最新方案，适用于全地图")
                   if SN == nil then else
                   if SN[1]==true then cahknb() end
                   if SN[2]==true then cahknb2() end
                   if SN[3]==true then A8() end end
                   FX1=0 end
 function cahknb2()  
 gg.setRanges(4)
 							   local dataType = 4
                  							   local tb1 = {{1117126656, 0},{256, -36},{65793, -92},}
                                   							   local tb2 = {{  -100 }, }
                                                    							   SearchWrite(tb1, tb2, dataType)
                                                                     							   sln=gg.getResultCount()
                                                                                      							   if sln<1 then return end	
                                                                                                       							   local nmb=gg.getResults(1)
                                                                                                                        							   	 sl=gg.getValues(nmb)
                                                                                                                                            									nnb=sl[1].value

                                                                                                                                                              									qmnb={
                                                                                                                                                                                									{["memory"]=4},
                                                                                                                                                                                                  									{["name"]="手持物品修改"},
                                                                                                                                                                                                                    									{["value"]=nnb,["type"]=4},
                                                                                                                                                                                                                                      									{["lv"]=200,["offset"]=-320,["type"]=4},
                                                                                                                                                                                                                                                        									}
                                                                                                                                                                                                                                                                          									qmxg={
                                                                                                                                                                                                                                                                                            									{["value"]=11907,["offset"]=0,["type"]=4}
                                                                                                                                                                                                                                                                                                              									}
                                                                                                                                                                                                                                                                                                                                									xqmnb(qmnb)
                                                                                                                                                                                                                                                                                                                                                  									end
                                                                                                                                                                                                                                                                                                                                                                    															



function cahknb()
qmnb = {
{["memory"] = 4},
{["name"] = "喷漆罐改乐器"},
{["value"]=12239,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=20,["type"]=4}}
qmxg={
{["value"]=11907,["offset"]=0,["type"]=4}}
xqmnb(qmnb)
end
	 
function CAE()
menu = gg.multiChoice({
"1.漏洞类",
"2.制裁房主",
"3.返回上一页",},nil,"")
    if menu[1] == true then
      CALD()
    end
    if menu[2] == true then
      CAES()
  end
  if menu[3] == true then
      CAZ1()
  end
    PD1 = 0
    PD2 = 0
end


function CAJ()
menu1 = gg.multiChoice({
"狙击枪光速换弹",
"狙击枪无后座无间隔",
"失效",
"失效",
"狙击枪添加准星",
"子弹改容量",
"子弹间隔变成0",
"失效",
'返回上一页'},
nil,'')
if menu1 == nil then else 
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d9() end
if menu1[8] == true then d10() end
if menu1[9] == true then CAZ1() end
end
end

function d10()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "️开", "️️关️️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
XG = gg.prompt({"输入对方迷你号"}
,{[1]=""},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x626328, 0x5B0, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = XG}})
elseif F==2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x626328, 0x5B0, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
end
end



function d1()
qmnb = {
  {["memory"] = 4},
  {["name"] = "1秒钟换子弹"},
  {["value"] =15003 , ["type"] = 4},
  {["lv"] = 15004, ["offset"] = -136, ["type"] = 4},
  }
  qmxg = {
  {["value"] = 0, ["offset"] = -24,["type"] = 16},
  }
  xqmnb(qmnb)
  gg.clearResults()
  end
function d2()
 gg.toast(so({("狙击枪防抖连发"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))
 end

 function d3()
gg.setRanges(4)
local dataType = 4
local tb1 = {{1137836032, 0}, {0, 12}, {15003, 16}, {100, 204}, }
local tb2 = {{1, 12}, }
SearchWrite(tb1, tb2, dataType)
end

function d4()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =774, ["type"] = 4},
{["lv"] =768 , ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"]=0,["offset"]=-4,["type"]=4},
}
xqmnb(qmnb)
end
function d5()
F = gg.alert("狙击枪添加准星","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择开关")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "添加准星[开]"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 40, ["offset"] = -32, ["type"] = 4}}
qmxg = {
{["value"]= 1,["offset"]= -28,["type"]= 4}}
xqmnb(qmnb)
elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪添加准星[关]"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 40, ["offset"] = -32, ["type"] = 4}}
qmxg = {
{["value"]= 0,["offset"]= -28,["type"]= 4}}
xqmnb(qmnb)
end
end
function d6()
local memory = 4
local array = {
{["lv"] = -2117, ["type"] = 2},
{["lv"] = 1, ["hv"] = 10000, ["offset"] = 68, ["type"] = 2},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 68, 2, 32000)
end
end
end
function d7()
gg.setRanges(4)
local dataType = 4
local tb1 = {{12005, 0}, {1058642330, 304}, }
local tb2 = {{-100, 304}, }
SearchWrite(tb1, tb2, dataType)
end
function d8()
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑无冷却"},
{["value"] = 12005, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = 76, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 76, ["type"] = 4},
}
xqmnb(qmnb)
end
function d9()
qmnb = {
{["memory"] = 4},
{["name"] = "0间隔"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end

function CA2()
gg.setRanges(4)
local dataType = 2
local tb1 = {{-2117, 0}, {1000, 64}, }
local tb2 = {{0, 64}, }
end


function XEC()
SN = gg.multiChoice({
	 "喷漆改破坏方块",
	 "喷漆改黑龙球",
	 "烤牛排改寒冰炸弹",
	 "香溢蔬菜煲改卡图方块",
	 "香溢薯条改黑龙",
	 "下一页",
	 "返回上一页",
}, nil, "")
 if SN == nil then else
if SN[1]==true then A1() end
if SN[2]==true then A2() end
if SN[3]==true then A3() end
if SN[4]==true then A6() end
if SN[5]==true then A5() end
if SN[6]==true then ZT() end
if SN[7]==true then A8() end end
FX1=0 end

function ZT()
SN = gg.multiChoice({
	 "召唤虚空幻影1",
	 "召唤虚空幻影2",
	 "召唤虚空幻影3",
	 "返回上一页",
}, nil, "")
 if SN == nil then else
if SN[1]==true then ZT1() end
if SN[2]==true then ZT2() end
if SN[3]==true then ZT3() end
if SN[4]==true then CAZ() end end
FX1=0 end

function ZT1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("140",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第1步开启成功")
end

function ZT2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("141",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第2步开启成功")
end

function ZT3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11003",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("142",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第3步开启成功,请在工具栏下滑找到即可")
end


function A1()
qmnb = {
{["memory"] = 4},
{["name"] = "喷漆罐改破坏方块"},
{["value"]=12239,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=20,["type"]=4}}
qmxg={
{["value"]=11500,["offset"]=0,["type"]=4}}
xqmnb(qmnb)
end
function A2()
qmnb = {
{["memory"] = 4},
{["name"] = "喷灌改黑龙火球"},
{["value"]=12239,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=20,["type"]=4}}
qmxg={
{["value"]=15054,["offset"]=0,["type"]=4}}
xqmnb(qmnb)
end			
function A3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12517",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12517", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("15064",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function A5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12551",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12551", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("13502",gg.TYPE_DWORD)
gg.toast("香溢薯条改黑龙开启成功共修改14个数值")
end

function A6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12554",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12554", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("15525",gg.TYPE_DWORD)
gg.toast("开启成功")
end
function A8()
	 CAZ()
end

function CAP()
SN = gg.choice({
	 "无限连跳",
	 "平飞",
	 "伪飞行",
	 "单杀保险箱",
	 "过飞行检测",
	 "无限连跳思路二",
     "第一格无限物品",
     "远程放置[背]",
     "高跳",
	 "火箭筒同时发射数量更改",
	 "滑翔",
	 "返回上一页",
}, nil, "")
if SN==1 then
     PVP1()
end
if SN==2 then
     PVP2()
end
if SN==3 then
     PVP3()
end     
if SN==4 then
     PVP4()     
end
if SN==5 then
     PVP5() 
end
if SN==6 then
     PVP6() 
end
if SN==7 then
     PVP7() 
end
if SN==8 then
     PVP8() 
end
if SN==9 then
     PVP9() 
end
if SN==10 then
     PVP10() 
end
if SN==11 then
     PVP11() 
end
if SN==12 then
     CAZ1()                                     
end                         
FX1=0

function PVP11()
gg.toast("请选择开关")
   F = gg.alert("滑翔","开","关")
    if  F~=1 and F~=2 then
     gg.toast("你未选择开关")
         gg.toast("你未选择开关")
           else 
             end
             if  F== 1 then
             gg.clearResults()
             qmnb = {
             {["memory"] = 16384},
             {["name"] = "滑翔[开]"},
             {["value"] = 4.0, ["type"] = 16},
             {["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
             }
             qmxg = {
             {["value"] = 0.1, ["offset"] = -4, ["type"] = 16},
             }
             xqmnb(qmnb)
             gg.clearResults()
              elseif F == 2 then
              qmnb = {
              {["memory"] = 16384},
              {["name"] = "滑翔[关]"},
              {["value"] = 4.0, ["type"] = 16},
              {["lv"] = 0.1, ["offset"] = -4, ["type"] = 16},
              }
              qmxg = {
              {["value"] = 8, ["offset"] = -4, ["type"] = 16},
              }
              xqmnb(qmnb)
              gg.clearResults()
              end
              end

function PVP10()
 mm1 = gg.prompt({"『输入火箭筒发射数量』"}
,{[1]=1},{[1]="number"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;1;1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(mm1, gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
mm2 = mm1
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 end


function PVP9()
gg.alert("开启后如果想恢复，退出房间重新进即可")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.toast("nil")
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数(60等于2.3倍，自己算)，0～1000   默认150'}, {i='150'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("开启成功")
end

function PVP6()
gg.toast("请选择开关")
F=gg.alert("无限跳", "️开启️", "️️关闭️️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x627238, 0x668, 0xB4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
elseif F==2 then
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x627238, 0x668, 0xB4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1}})
end
end
function PVP7()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "第1格无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "第1格无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=94580388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end
end
function PVP8()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "超远放置"},
{["value"] = 640, ["type"] = 16},
{["lv"] = 1143275520, ["offset"] = 12, ["type"] = 4},
{["lv"] = 350.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = -1, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "超远放置"},
{["value"] = 640, ["type"] = 16},
{["lv"] = 1143275520, ["offset"] = 12, ["type"] = 4},
{["lv"] = 350.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.1, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function PVP5()
gg.alert("注:在联机界面开启")
local so_bss='libAppPlayJNI.so:bss'
kg3={6499384,4056,5664,276}
gg.edits(xe(so_bss,kg3,1),{{999,4,0,false},},"过飞行检测")
end

function PVP4()
gg.toast("请选择单杀保险箱开关。")
F = gg.alert("请选择单杀保险箱[开 关]","开","关")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast('✔单杀保险箱开启成功\n共修改' .. a1 .. '条数据'..string.format('\n耗时: %.2f', os.clock() - FKC_a1))

gg.toast("单杀保险箱开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭单杀保险箱请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('️ID:单杀保险箱恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n耗时: %.2f', os.clock() - FKC_a1))

gg.toast("单杀保险箱恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 


function PVP3()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777472,["offset"]=-92,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
 elseif  F== 2 then
 qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777216,["offset"]=-92,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end


function PVP1()
gg.toast(so({"空格连跳",944892805240,4,32},{{1065353216,0xC8,4},{220,0x4,4},{120,0x8,4},{180,-0x8,4},{1086324736,0x15C,4},{1073741824,0x160,4},{1082130432,0x158,4}},{{335007449089,0x80,32,1}}))
end

function PVP2()
   gg.toast("请选择开关")
   F = gg.alert("平飞\n请选择{开 关}\n开启后，开飞行按钮就可以平飞了","开","关")
    if  F~=1 and F~=2 then
     gg.toast("你未选择开关")
         gg.toast("你未选择开关")
           else 
             end
             if  F== 1 then
             gg.clearResults()
             qmnb = {
             {["memory"] = 16384},
             {["name"] = "平飞[开]"},
             {["value"] = 4.0, ["type"] = 16},
             {["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
             }
             qmxg = {
             {["value"] = 0, ["offset"] = -4, ["type"] = 16},
             }
             xqmnb(qmnb)
             gg.clearResults()
              elseif F == 2 then
              qmnb = {
              {["memory"] = 16384},
              {["name"] = "平飞[关]"},
              {["value"] = 4.0, ["type"] = 16},
              {["lv"] = 0.0, ["offset"] = -4, ["type"] = 16},
              }
              qmxg = {
              {["value"] = 8, ["offset"] = -4, ["type"] = 16},
              }
              xqmnb(qmnb)
              gg.clearResults()
              end
              end

function CASC()
SN = gg.multiChoice({
	 "玩法改创造",
	 "枪械修改子弹[房主]",
	 "手上物品改地形编辑器",
	 "外挂检测转移",
	 "地图编辑模式",
	 "解禁编辑器",
     "修改模式",
	 "返回上一页",
}, nil, "闪退用V8盒子")
 if SN == nil then else
if SN[1]==true then SC1() end
if SN[2]==true then SC2() end
if SN[3]==true then SC3() end
if SN[4]==true then SC4() end
if SN[5]==true then SC5() end
if SN[6]==true then SC6() end
if SN[7]==true then SC7() end
if SN[8]==true then CAZ() end end
FX1=0 end



function SC7()
i57= gg.choice({
    "改为编辑模式",
    "改为玩法模式",
    "改为冒险模式",    
    "改为创造模式",   
    "改为极限模式",   
    "返回主页",},i2,os.date("拷打迷你乐子"))
if i57==1 then i95=4 i135() end
if i57==2 then i95=5 i135() end
if i57==3 then i95=0 i135() end
if i57==4 then i95=1 i135() end
if i57==5 then i95=3 i135() end
XGCK=-1 end



function i135()
gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sl=gg.getResultCount()
if sl<1 then return end	 
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
qmnb = {
{["memory"] = 4},
{["name"] = "修改模式"},
{["value"] =t , ["type"] = 4},
{["lv"] = t, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] =i95, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
end






function SC6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12862", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12350", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function SC4()
a= gg.prompt({"输入您的迷你号"},{[1]=259537497},{[1]="number"})[1]
gg.toast("请复制房主迷你号！")
gg.sleep(5000)
b= gg.prompt({"输入房主迷你号"},{[1]=259537497},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "外挂检测转移"},
{["value"] = a, ["type"] = 4},
{["lv"] = a, ["offset"] = 0, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
CA1()
end
                                                    	 

function SC5()
F = gg.alert("先进入编辑地图一次","开","关")
if  F== 1 then
gg.toast(so({"地图编辑按钮",-4294815744,4,32},{{256,12,4}},{{16777472,40,4,1},{16777216,0x628,4,1}}))
elseif F == 2 then
gg.toast(so({"地图编辑按钮",-4294815744,4,32},{{256,12,4}},{{16777216,40,4,false},{16777472,0x628,4,false}}))
end
end																													
function SC2()
SN = gg.choice({
    "狙击枪",
    "冲锋枪",
    "重机枪",
"古振兴傻逼",},2018,os.date("wdnmd"))
if SN==1 then ip1() end
if SN==2 then ip2() end
if SN==3 then ip3() end
FX1=0 end

function ip1()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪子弹"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
function ip2()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪子弹"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
function ip3()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪子弹"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end


function SC1()
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "增强改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
CA1()
end

function CAES()
SN = gg.choice({
	 "删备份",
	 	 "伪房主",
		  	 "控制房主",
		  	 "返回上一页",
			   }, nil, "概率闪退")
			   if SN==1 then
			   	 EX1()
					end
					if SN==2 then
						 EX2()
						 	 end
							  if SN==3 then
							       EX3()
							       end	 
							       if SN==3 then
							           CAZ1()	 
								   end
								   FX=0
								   end
								   
								   
function EX3()
a= gg.prompt({"输入您的迷你号"},{[1]=259537497},{[1]="number"})[1]
gg.toast("请复制房主迷你号！")
gg.sleep(5000)
b= gg.prompt({"输入房主迷你号"},{[1]=259537497},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "控制房主"},
{["value"] = a, ["type"] = 4},
{["lv"] = b, ["offset"] = 16, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4,},
}
xqmnb(qmnb)
end


function EX2()
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11014, ["type"] = 4},
{["lv"] = 11522, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 32,  ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function EX1()
gg.toast("修改成功重新拿取即可")
  end

function CALD()
SN = gg.choice({
	 "踢房主",
	 "崩服器（一旦开启无法关闭，可用于云服）",
	 "手持物品代码",
	 "临时改名",
	 "返回上一页",
}, nil, "米米官方留下的漏洞云服可用\n中概率闪退")
if SN==1 then
	 LD1()
end
if SN==2 then
	 LD2()
end	 
if SN==3 then	 
     LD3()
end
if SN==4 then	 
     LD4()
end
if SN==4 then	 
     CAZ1()
end
FX=0
end


function LD4()
e = io.open("/storage/emulated/0/AndroidCA.txt", "rb") if e ==nil then mznb 
="" else
e = io.open("/storage/emulated/0/AndroidCA.txt"):read("*a") mznb = e:match("(.-)") if e == "" then mznb = "" end end
mnm = ":W"
mnmz = ":w"
mnmcq = gg.prompt({"请输入名字"}
,{[1]=mznb},{[1]="text"})
if not mnmcq then return end
mnmc = ":"..mnmcq[1]
io.open("/storage/emulated/0/AndroidCA.txt", "w") io.open("/storage/emulated/0/AndroidCA.txt", "w"):write("" .. mnmcq[1].. ""):close()

qmnb = {
{["memory"] = 4},
{["name"] = "临时改名"},
{["value"] = zh, ["type"] = 32},
{["lv"] = 0, ["offset"] = 4, ["type"] = 32},
{["lv"] = 0, ["offset"] = 8, ["type"] = 32},
{["lv"] = 0, ["offset"] = 12, ["type"] = 32},
{["lv"] = 0, ["offset"] = 16, ["type"] = 32},
{["lv"] = 0, ["offset"] = 20, ["type"] = 32},
{["lv"] = 0, ["offset"] = 24, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 32},
{["lv"] = 0, ["offset"] = 32, ["type"] = 32},
{["lv"] = 0, ["offset"] = 36, ["type"] = 32},
{["lv"] = 0, ["offset"] = 40, ["type"] = 32},
{["lv"] = 0, ["offset"] = 44, ["type"] = 32},
{["lv"] = 0, ["offset"] = 48, ["type"] = 32},
{["lv"] = 0, ["offset"] = 52, ["type"] = 32},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x5C, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x60, ["type"] = 4},
}
qmxg = {
{["value"] = mnm, ["offset"] = 65, ["type"] = 1},
{["value"] = mnm, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnm, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnm, ["offset"] = 96, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber(":WWwWwwwwwwwwwwwwwwwwwwwwwwwwwwwW", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.getResults(400)
gg.editAll(mnmc, gg.TYPE_BYTE)
if gg.getResultCount() == 0 then
else
end
gg.clearResults()
end


function LD3()
local dataType = 4
local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
local tb2 = {{  -0x74 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
	 nnb=sl[1].value
	 gg.alert("手持物品代码为["..nnb.."]")
	 end


function LD1()
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共注入 " .. xgsl .. " 条数据请等待几秒") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
gg.alert("开启前请先复制自己的迷你号")
a = gg.prompt({"请输入你的迷你号"}
,{[1]=nil},{[1]="number"})[1]
gg.toast("请在10秒内复制房主的迷你号\n点击房主头像进入主页即可复制")
gg.sleep(10000)
b = gg.prompt({"请输入房主迷你号"}
,{[1]=nil},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] = a, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function LD2()
	 SN = gg.choice({
     "开启崩服器",
     "关闭崩服器(查看效果)",
     "超级崩服器(请先开启崩服器)",
}, nil, "进入服务器崩死米妮痴子")
if SN==1 then
     E2a1()
end
if SN==2 then
     E2a2()
end
if SN==3 then
     E2a3()
end
FX1=0
end

function E2a1()
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function E2a2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;16777216;16777472;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("时间已过，自动开始崩服")
     gg.clearResults()
     CA1()
end

function E2a3()
     function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function HS73()
	 os.exit()
end



while true do
sj = os.date("\n%c")
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    CA1()
  end
end


