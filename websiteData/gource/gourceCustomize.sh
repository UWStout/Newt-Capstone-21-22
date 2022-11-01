# Remove actions after a certain date (currently December SGX)
cat gourceLog.txt | awk -F\| '$1<=1639785600' > gourceLog.temp
sed -i.bak '/StarterContent/d' ./gourceLog.temp
sed -i.bak '/Mannequin/d' ./gourceLog.temp
mv gourceLog.temp gourceLog.txt
rm gourceLog.temp.bak

# Setup Project Name
projName="Newt! - Unreal Engine 4 Project"

function fix {
  sed -i -- "s/$1/$2/g" gourceLog.txt
}

# Replace non human readable names with proper ones
fix "|berriers|" "|Prof. B|"
fix "|tetzlaffm|" "|Prof. Tetzlaff|"
fix "|macagony7915|" "|Yair Macagon|"
fix "|garciat5597|" "|Tyler Garcia|"
fix "|lugor3644|" "|Rodger Lugo|"
fix "|nadler2122|" "|Reece Nadle|"
fix "|cernohous-schrb6773|" "|Bryce Cernohous-Schrader|"
fix "|nikitina9678|" "|Anton Nikitin|"
fix "|hollingerw7086|" "|William Hollinger|"
fix "|montek7157|" "|Katherine Monte|"
fix "|gardnerk3298|" "|Kali Gardner|"
fix "|gillelandj0261|" "|Jonathan Gilleland|"
fix "|kellyh4293|" "|Harrison Kelly|"
fix "|foxe3857|" "|Emylianne Fox|"
fix "|thielea1319|" "|Adrianna Thiele|"
