function onCreate()
	if boyfriendName == 'pibbeh' then
		makeAnimatedLuaSprite('animatedbficon', 'icons/pibbehiconsanimated', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficon', 'normal', 'pibbeh_n',24, true)
		addAnimationByPrefix('animatedbficon', 'losing', 'pibbeh_w', 24, true)
                addAnimationByPrefix('animatedbficon', 'winning', 'pibbeh_l', 24, true)
		setScrollFactor('animatedbficon', 0, 0)
		setObjectCamera('animatedbficon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficon', false)
                setObjectOrder('animatedbficon', 99)
        setProperty('animatedbficon.angle', 0)
        setProperty('animatedbficon.alpha', 1)
		objectPlayAnimation('animatedbficon', 'normal', false)
	end
end
function onUpdate(elapsed)
	if boyfriendName == 'pibbeh' then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.5 then
			objectPlayAnimation('animatedbficon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficon', 'winning', false)
		else
			objectPlayAnimation('animatedbficon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))

	setProperty('animatedbficon.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficon.y', getProperty('iconP1.y') - 10)
	setProperty('animatedbficon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficon.scale.y', getProperty('iconP1.scale.y'))
	setProperty('animatedbficon.x', getProperty('iconP1.x'))

end