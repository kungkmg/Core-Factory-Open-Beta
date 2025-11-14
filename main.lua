local v0=string;local v1=Instance;local v2=game;local v3=pcall;local v4=task;local v5=workspace;local v6=Enum;local v7=Color3;local v8=UDim2;
if v2.CoreGui:FindFirstChild("\65\117\116\111\67\111\108\108\101\99\116\71\85\73") then
    v2.CoreGui:FindFirstChild("\65\117\116\111\67\111\108\108\101\99\116\71\85\73"):Destroy();
end;
local v9=v2.Players.LocalPlayer;local v10=v9.Character or v9.CharacterAdded:Wait();local v11=v10:WaitForChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116");
local v12=v1.new("\83\99\114\101\101\110\71\117\105",v2.CoreGui);v12.Name="\65\117\116\111\67\111\108\108\101\99\116\71\85\73";
local v13=v1.new("\70\114\97\109\101",v12);v13.Size=v8.new(0,200,0,80);v13.Position=v8.new(0.85,0,0.1,0);v13.BackgroundColor3=v7.fromRGB(25,25,25);v13.BorderSizePixel=0;
v13.Active=true;v13.Draggable=true;v13.Name="\77\97\105\110\70\114\97\109\101";
local v14=v1.new("\85\73\67\111\114\110\101\114",v13);v14.CornerRadius=UDim.new(0,8);
local v15=v1.new("\84\101\120\116\76\97\98\101\108",v13);v15.Text="\240\159\148\153 Auto Collect";v15.Size=v8.new(1,0,0,30);v15.BackgroundTransparency=1;
v15.TextColor3=v7.fromRGB(255,255,255);v15.Font=v6.Font.GothamBold;v15.TextSize=16;
local v16=v1.new("\84\101\120\116\66\117\116\116\111\110",v13);v16.Size=v8.new(0.8,0,0,30);
v16.Position=v8.new(0.1,0,0.45,0);v16.BackgroundColor3=v7.fromRGB(60,60,60);v16.TextColor3=v7.fromRGB(255,255,255);
v16.Font=v6.Font.GothamSemibold;v16.Text="\240\159\154\178 ON";v16.TextSize=16;
local v17=v1.new("\85\73\67\111\114\110\101\114",v16);v17.CornerRadius=UDim.new(0,6);
local v18=true;local v19=0.1;

local function v20(v21)
    if not v21 then return false end;
    if v0.find(v21.Name,v9.Name) then return true end;
    for v22,v23 in ipairs(v21:GetDescendants()) do
        if (v23:IsA("\84\101\120\116\76\97\98\101\108") or v23:IsA("\84\101\120\116\66\111\120")) and v23.Text and v0.find(v23.Text,v9.Name) then
            return true;
        end;
    end;
    return false;
end;

local function v24(v25)
    if v11 and v25 then
        v11.CFrame=v25.CFrame+Vector3.new(0,2,0);
        v4.wait(0.05);firetouchinterest(v11,v25,0);v4.wait();firetouchinterest(v11,v25,1);
    end
end;

v16.MouseButton1Click:Connect(function()
    v18=not v18;
    if v18 then
        v16.Text="\240\159\154\178 ON";v16.BackgroundColor3=v7.fromRGB(40,120,40);
    else
        v16.Text="\240\159\154\180 OFF";v16.BackgroundColor3=v7.fromRGB(120,40,40);
    end
end);

v4.spawn(function()
    while v4.wait(v19) do
        v3(function()
            v10=v9.Character or v9.CharacterAdded:Wait();v11=v10:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116");
            if v18 and v11 then
                for v26,v27 in ipairs(v5:GetDescendants()) do
                    if v27:IsA("\66\97\115\101\80\97\114\116") and v20(v27) then
                        v24(v27);
                    end;
                end;
            end;
        end);
    end;
end);
