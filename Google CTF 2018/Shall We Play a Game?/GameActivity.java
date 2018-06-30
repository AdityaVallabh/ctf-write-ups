package com.google.ctf.shallweplayagame;

import android.animation.AnimatorSet;
import android.os.Bundle;
import android.support.v7.app.c;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Random;

public class GameActivity
  extends c
  implements View.OnClickListener
{
  a[][] l = (a[][])Array.newInstance(a.class, new int[] { 3, 3 });
  Queue<AnimatorSet> m = new LinkedList();
  Object n = N._(new Object[] { Integer.valueOf(3), N.h, Long.valueOf(1416127776L + 1869507705L + 544696686L + 1852403303L + 544042870L + 1696622963L + 544108404L + 544501536L + 1886151033L) });
  int o;
  boolean p;
  byte[] q = new byte[32];
  byte[] r = { -61, 15, 25, -115, -46, -11, 65, -3, 34, 93, -39, 98, 123, 17, 42, -121, 60, 40, -60, -112, 77, 111, 34, 14, -31, -4, -7, 66, 116, 108, 114, -122 };
  
  public GameActivity()
  {
    N._(new Object[] { Integer.valueOf(3), N.i, n, q });
    o = 0;
    p = false;
  }
  
  a a(List<a> paramList)
  {
    return (a)paramList.get(((Random)n).nextInt(paramList.size()));
  }
  
  boolean a(a.a paramA)
  {
    int[] arrayOfInt1 = new int[3];
    int[] tmp7_5 = arrayOfInt1;
    tmp7_5[0] = 0;
    int[] tmp11_7 = tmp7_5;
    tmp11_7[1] = 0;
    int[] tmp15_11 = tmp11_7;
    tmp15_11[2] = 0;
    tmp15_11;
    int[] arrayOfInt2 = new int[3];
    int[] tmp27_25 = arrayOfInt2;
    tmp27_25[0] = 0;
    int[] tmp31_27 = tmp27_25;
    tmp31_27[1] = 0;
    int[] tmp35_31 = tmp31_27;
    tmp35_31[2] = 0;
    tmp35_31;
    int[] arrayOfInt3 = new int[2];
    int[] tmp47_45 = arrayOfInt3;
    tmp47_45[0] = 0;
    int[] tmp51_47 = tmp47_45;
    tmp51_47[1] = 0;
    tmp51_47;
    int i = 0;
    while (i < 3)
    {
      j = 0;
      while (j < 3)
      {
        if (l[j][i].d == paramA)
        {
          arrayOfInt1[i] += 1;
          arrayOfInt2[j] += 1;
          if (i == j) {
            arrayOfInt3[0] += 1;
          }
          if (i + j == 2) {
            arrayOfInt3[1] += 1;
          }
        }
        j += 1;
      }
      i += 1;
    }
    int j = arrayOfInt1.length;
    i = 0;
    while (i < j)
    {
      if (arrayOfInt1[i] >= 3) {
        return true;
      }
      i += 1;
    }
    j = arrayOfInt2.length;
    i = 0;
    for (;;)
    {
      if (i >= j) {
        break label205;
      }
      if (arrayOfInt2[i] >= 3) {
        break;
      }
      i += 1;
    }
    label205:
    j = arrayOfInt3.length;
    i = 0;
    for (;;)
    {
      if (i >= j) {
        break label231;
      }
      if (arrayOfInt3[i] >= 3) {
        break;
      }
      i += 1;
    }
    label231:
    return false;
  }
  
  void k()
  {
    AnimatorSet localAnimatorSet = (AnimatorSet)m.poll();
    if (localAnimatorSet != null) {
      localAnimatorSet.start();
    }
  }
  
  List<a> l()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < 3)
    {
      int j = 0;
      while (j < 3)
      {
        if (l[j][i].a()) {
          localArrayList.add(l[j][i]);
        }
        j += 1;
      }
      i += 1;
    }
    return localArrayList;
  }
  
  void m()
  {
    Object localObject1 = N._(new Object[] { Integer.valueOf(0), N.a, Integer.valueOf(0) });
    Object localObject2 = N._(new Object[] { Integer.valueOf(1), N.b, q, Integer.valueOf(1) });
    N._(new Object[] { Integer.valueOf(0), N.c, localObject1, Integer.valueOf(2), localObject2 });
    localObject1 = (byte[])N._(new Object[] { Integer.valueOf(0), N.d, localObject1, r });
    ((TextView)findViewById(2131165269)).setText(new String((byte[])localObject1));
    o();
  }
  
  void n()
  {
    int i = 0;
    while (i < 3)
    {
      int j = 0;
      while (j < 3)
      {
        l[j][i].a(a.a.a, 25);
        j += 1;
      }
      i += 1;
    }
    k();
    o += 1;
    Object localObject = N._(new Object[] { Integer.valueOf(2), N.e, Integer.valueOf(2) });
    N._(new Object[] { Integer.valueOf(2), N.f, localObject, q });
    q = ((byte[])N._(new Object[] { Integer.valueOf(2), N.g, localObject }));
    if (o == 1000000)
    {
      m();
      return;
    }
    ((TextView)findViewById(2131165269)).setText(String.format("%d / %d", new Object[] { Integer.valueOf(o), Integer.valueOf(1000000) }));
  }
  
  void o()
  {
    int i = 0;
    while (i < 3)
    {
      int j = 0;
      while (j < 3)
      {
        l[j][i].setValue(a.a.d);
        j += 1;
      }
      i += 1;
    }
    o = 0;
    p = true;
    k();
  }
  
  public void onClick(View paramView)
  {
    if (p) {}
    while (!m.isEmpty()) {
      return;
    }
    paramView = (a)paramView;
    if (!paramView.a())
    {
      b.b();
      return;
    }
    b.a();
    paramView.setValue(a.a.b);
    if (a(a.a.b))
    {
      n();
      return;
    }
    paramView = l();
    if (paramView.isEmpty())
    {
      n();
      return;
    }
    a(paramView).setValue(a.a.c);
    if (a(a.a.c))
    {
      o();
      return;
    }
    k();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131296283);
    paramBundle = (LinearLayout)findViewById(2131165268);
    int i = 0;
    while (i < 3)
    {
      LinearLayout localLinearLayout = new LinearLayout(getApplicationContext());
      int j = 0;
      while (j < 3)
      {
        a localA = new a(getApplicationContext(), m);
        localLinearLayout.addView(localA);
        l[j][i] = localA;
        localA.setOnClickListener(this);
        j += 1;
      }
      paramBundle.addView(localLinearLayout);
      i += 1;
    }
  }
}
