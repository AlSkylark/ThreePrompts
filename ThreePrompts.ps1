Function Prompt {
    $arr = $pwd -split "\\"
    $ps = "PS "
    for($i = 0; $i -lt $arr.Length; $i++){
        switch($i){
            {$PSItem -eq 0}{
                $final = "$ps$($arr[$i])> "
                break
            }
            {$PSItem -eq 1}{
                $final = "$ps$($arr[$i-1])\$($arr[$i])> "
                break
            }
            {$PSItem -eq 2}{
                $final = "$ps$($arr[$i-2])\$($arr[$i-1])\$($arr[$i])> "
                break
            }
            default{
                $final = "$ps...\$($arr[$i-2])\$($arr[$i-1])\$($arr[$i])> "
                break
            }
        }
    }
    $final
}