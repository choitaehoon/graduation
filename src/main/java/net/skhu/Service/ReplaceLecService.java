package net.skhu.Service;

import org.springframework.stereotype.Service;

@Service
public class ReplaceLecService {

    public String[] selectCheck(int choice)
    {
        if (choice == 0)
            return new String[]{"","","","",""};
        else if (choice == 1)
            return new String[]{"","selected","","",""};
        else if(choice == 2)
            return new String[]{"","","selected","",""};
        else if(choice == 3)
            return new String[]{"","","","selected",""};
        else
            return new String[]{"","","","","selected"};

    }
}
